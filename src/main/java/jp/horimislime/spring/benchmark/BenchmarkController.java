package jp.horimislime.spring.benchmark;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Controller class for benchmarking template engine
 * 
 * @author horimislime
 * 
 */
@Controller
public class BenchmarkController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Model model) {

		List<Person> persons = new ArrayList<Person>();

		for (int i = 1; i < 100; i++) {
			Person person = new Person();
			person.setName("person" + i);
			person.setAge(i);
			person.setHeight(170.5f);
			person.setWeight(60.5f);

			persons.add(person);
		}
		model.addAttribute("persons", persons);

		return "index";
	}
}
