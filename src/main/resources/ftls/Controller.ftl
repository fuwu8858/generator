package ${BasePackageName}${ControllerPackageName};

import ${BasePackageName}${EntityPackageName}.${ClassName};
import ${BasePackageName}${ServicePackageName}.${ClassName}Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.zero.json.JSONUtil;
import com.zero.model.response.ObjectDataResponse;
import com.zero.qo.AccountQo;
import com.zero.service.AccountAssetService;

import io.swagger.annotations.ApiOperation;

import com.zero.model.response.ObjectDataResponse;
import com.zero.service.AmountEventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Author ${Author}
 * Date  ${Date}
 */
@RestController
@RequestMapping(value = "/${EntityName}")
public class ${ClassName}Controller {
    @Autowired
    private ${ClassName}Service ${EntityName}Service;

    @RequestMapping(value = {"/list", ""}, method = RequestMethod.GET)
    public ObjectDataResponse list() {
        List<${ClassName}> ${EntityName}s = ${EntityName}Service.findAllList();
        return  ObjectDataResponse.payload(${EntityName}s);
    }

    @RequestMapping(value = {"/get"}, method = RequestMethod.GET)
    public ObjectDataResponse get(@RequestParam String id) {
        ${ClassName} ${EntityName} = ${EntityName}Service.get(id);
        return  ObjectDataResponse.payload(${EntityName});
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insert(@RequestBody ${ClassName} ${EntityName}) {
        if (${EntityName}Service.insert(${EntityName}) > 0) {
            return "success";
        } else {
            return "failed";
        }
    }

    @RequestMapping(value = "/insertBatch", method = RequestMethod.POST)
    public String insertBatch(@RequestBody List<${ClassName}> ${EntityName}s) {
        if (${EntityName}Service.insertBatch(${EntityName}s) > 0) {
            return "success";
        } else {
            return "failed";
        }
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(@RequestBody ${ClassName} ${EntityName}) {
        if (${EntityName}Service.update(${EntityName}) > 0) {
            return "success";
        } else {
            return "failed";
        }
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String delete(@RequestBody ${ClassName} ${EntityName}) {
        if (${EntityName}Service.delete(${EntityName}) > 0) {
            return "success";
        } else {
            return "failed";
        }
    }

}
