package ${BasePackageName}${ServicePackageName};

import ${BasePackageName}${DaoPackageName}.${ClassName}Mapper;
import ${BasePackageName}${EntityPackageName}.${ClassName};
${InterfaceImport}
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Author ${Author}
 * Date  ${Date}
 */
@Service
public class ${ClassName}Service${Impl} {
    @Autowired
    private ${ClassName}Mapper ${EntityName}Mapper;
    ${Override}
    public ${ClassName} get(String id){
        return ${EntityName}Mapper.get(id);
    }
    ${Override}
    public List<${ClassName}> findList(${ClassName} ${EntityName}) {
        return ${EntityName}Mapper.findList(${EntityName});
    }
    ${Override}
    public List<${ClassName}> findAllList() {
        return ${EntityName}Mapper.findAllList();
    }
    ${Override}
    public int insert(${ClassName} ${EntityName}) {
        return ${EntityName}Mapper.insert(${EntityName});
    }
    ${Override}
    public int insertBatch(List<${ClassName}> ${EntityName}s){
        return ${EntityName}Mapper.insertBatch(${EntityName}s);
    }
    ${Override}
    public int update(${ClassName} ${EntityName}) {
        return ${EntityName}Mapper.update(${EntityName});
    }
    ${Override}
    public int delete(${ClassName} ${EntityName}) {
        return ${EntityName}Mapper.delete(${EntityName});
    }

}
