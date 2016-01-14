 var divwizard = {
    replacements: {
        modifiers: [],
        simple: function(varname){
            var code = '';
            if (divwizard.replacements.modifiers.length == 1){
                code = '{' + this.modifiers[0] + varname + '}';
            } else
            if (divwizard.replacements.modifiers.length > 1){
                code = '{$' + varname + '|';
                
                
                for(m in this.modifiers){
                       code = code + this.modifiers[m] + '|'
                }
                
                code = code + '}';
            } else {
                 code = '{$' + varname + '}';
            }
            
            document.getElementById('iframe').contentWindow.codepress.insertCode(code);
//            $("#output").val($("#output").val() + code);
        },
        addModifier: function(m){
            var caption = '';
            switch (m) {
                case 'ucase':
                    caption = 'Upper case'; 
                    this.modifiers[this.modifiers.length] = '^^^';
                    break;
                case 'lcase':
                    caption = 'Lower case'; 
                    this.modifiers[this.modifiers.length] = '_';
                    break;    
                case 'ucfirst':
                    caption = 'First letter'; 
                    this.modifiers[this.modifiers.length] = '^';
                    break;
                case 'eachword':
                    caption = 'Each word'; 
                    this.modifiers[this.modifiers.length] = '^^';
                    break;
                case 'length':
                    caption = 'String length'; 
                    this.modifiers[this.modifiers.length] = '%';
                    break;
                case 'cwords':
                    caption = 'Count of words'; 
                    this.modifiers[this.modifiers.length] = '%%';
                    break;
                case 'csenten':
                    caption = 'Count of sentences'; 
                    this.modifiers[this.modifiers.length] = '%%%';
                    break;                    
                case 'cparag':
                    caption = 'Count of paragraphs'; 
                    this.modifiers[this.modifiers.length] = '%%%%';
                    break;
            }
             var id = this.modifiers.length - 1;
             $('#modifiers').append('<li id="' + id + '" class=\'list-group-item\'><a class="btn btn-default" onclick="divwizard.replacements.delModifier('+ id+');">x</a>&nbsp;' + caption + '</li>');   
            
        },
        delModifier: function(id){
            var new_modifiers = []; 
            j=0;
            for (i in this.modifiers){
                if (i != j)
                    new_modifiers[j++] = this.modifiers[i];
            }
            
            this.modifiers = new_modifiers;
            
            $("#" + id).remove();
            
        }
    }
};