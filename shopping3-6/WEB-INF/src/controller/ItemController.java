package controller;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import logic.Item;
import logic.ItemService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ItemController {

	@Autowired
	private ItemService itemService;

	@RequestMapping
	public ModelAndView index() {

		// ���i�ꗗ�����擾
		List<Item> itemList = this.itemService.getItemList();

		// ���f���̍쐬
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("itemList", itemList);

		// �߂�l�ƂȂ�ModelAndView�C���X�^���X���쐬
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addAllObjects(model);

		return modelAndView;
	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView search(String itemName) {
		if (itemName == null || itemName.equals("")) {
			// �������i������̏ꍇ�A���i�S����Ԃ�
			return this.index();
		}

		List<Item> itemList = this.itemService.getItemByItemName(itemName);
		if (itemList == null || itemList.isEmpty()) {
			// �������i������̏ꍇ�A���i�S����Ԃ�
			return this.index();
		}

		// �߂�l�ƂȂ�ModelAndView�C���X�^���X���쐬
		ModelAndView modelAndView = new ModelAndView("index");
		modelAndView.addObject("itemList", itemList);

		return modelAndView;
	}

	@RequestMapping
	public ModelAndView create() {
		ModelAndView modelAndView = new ModelAndView("add");
		modelAndView.addObject(new Item());
		return modelAndView;
	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView register(@Valid Item item, BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			ModelAndView modelAndView = new ModelAndView("add");
			modelAndView.getModel().putAll(bindingResult.getModel());
			return modelAndView;
		}
		this.itemService.entryItem(item);
		return this.index();
	}

	@RequestMapping
	public ModelAndView edit(Integer itemId) {
		ModelAndView modelAndView = new ModelAndView("update");
		Item item = this.itemService.getItemByItemId(itemId);
		modelAndView.addObject(item);
		return modelAndView;
	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView update(@Valid Item item, BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			ModelAndView modelAndView = new ModelAndView("update");
			modelAndView.getModel().putAll(bindingResult.getModel());
			return modelAndView;
		}
		this.itemService.updateItem(item);
		return this.index();
	}

	@RequestMapping
	public ModelAndView confirm(Integer itemId) {
		ModelAndView modelAndView = new ModelAndView("delete");
		Item item = this.itemService.getItemByItemId(itemId);
		modelAndView.addObject(item);
		return modelAndView;
	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView delete(Item item) {
		this.itemService.deleteItem(item);
		return this.index();
	}

	@RequestMapping
	public void image(Integer itemId, HttpServletResponse response) {
		response.setContentType("image/jpeg");
		InputStream picture = null;
		OutputStream os = null;
		BufferedInputStream bis = null;
		try {
			picture = this.itemService.getPicture(itemId);
			os = response.getOutputStream();
			bis = new BufferedInputStream(picture);
			int data;
			while ((data = bis.read()) != -1) {
				os.write(data);
			}
		} catch (IOException e) {
			throw new RuntimeException(e);
		} finally {
			try {
				if (picture != null) {
					picture.close();
					os.close();
					bis.close();
				}
			} catch (IOException e) {
				// close�ł��Ȃ����������Ȃ̂Ŗ�������
			}

		}
	}
}