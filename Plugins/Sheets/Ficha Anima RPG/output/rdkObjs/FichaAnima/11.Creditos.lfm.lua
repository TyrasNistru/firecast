require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");

function newfrmFichaRPGmeister11_svg()
    __o_rrpgObjs.beginObjectsLoading();

    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setName("frmFichaRPGmeister11_svg");
    obj:setAlign("client");
    obj:setTheme("dark");

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.scrollBox1);
    obj.image1:setLeft(0);
    obj.image1:setTop(0);
    obj.image1:setWidth(600);
    obj.image1:setHeight(600);
    obj.image1:setSRC("/FichaAnima/images/RPGmeister.jpg");
    obj.image1:setStyle("stretch");
    obj.image1:setOptimize(true);
    obj.image1:setName("image1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setLeft(620);
    obj.layout1:setTop(10);
    obj.layout1:setWidth(200);
    obj.layout1:setHeight(150);
    obj.layout1:setName("layout1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.layout1);
    obj.rectangle1:setLeft(0);
    obj.rectangle1:setTop(0);
    obj.rectangle1:setWidth(200);
    obj.rectangle1:setHeight(150);
    obj.rectangle1:setColor("black");
    obj.rectangle1:setXradius(15);
    obj.rectangle1:setYradius(15);
    obj.rectangle1:setCornerType("round");
    obj.rectangle1:setName("rectangle1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout1);
    obj.label1:setLeft(0);
    obj.label1:setTop(10);
    obj.label1:setWidth(200);
    obj.label1:setHeight(20);
    obj.label1:setText("Programador: Vinny (Ambesek)");
    obj.label1:setHorzTextAlign("center");
    obj.label1:setName("label1");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout1);
    obj.label2:setLeft(0);
    obj.label2:setTop(35);
    obj.label2:setWidth(200);
    obj.label2:setHeight(20);
    obj.label2:setText("Arte: Nefer (Nefertyne)");
    obj.label2:setHorzTextAlign("center");
    obj.label2:setName("label2");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox1);
    obj.layout2:setLeft(830);
    obj.layout2:setTop(0);
    obj.layout2:setWidth(400);
    obj.layout2:setHeight(350);
    obj.layout2:setName("layout2");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout2);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("black");
    obj.rectangle2:setName("rectangle2");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout2);
    obj.label3:setLeft(0);
    obj.label3:setTop(0);
    obj.label3:setWidth(400);
    obj.label3:setHeight(20);
    obj.label3:setText("ANOTAÇÕES DO MESTRE");
    obj.label3:setHorzTextAlign("center");
    obj.label3:setName("label3");

    obj.textEditor1 = GUI.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout2);
    obj.textEditor1:setLeft(10);
    obj.textEditor1:setTop(25);
    obj.textEditor1:setWidth(380);
    obj.textEditor1:setHeight(320);
    obj.textEditor1:setField("anotacoes_do_mestre");
    obj.textEditor1:setName("textEditor1");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.scrollBox1);
    obj.label4:setLeft(620);
    obj.label4:setTop(375);
    obj.label4:setWidth(200);
    obj.label4:setHeight(20);
    obj.label4:setText("SUA VERSÃO:");
    obj.label4:setField("versionInstalled");
    obj.label4:setName("label4");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.scrollBox1);
    obj.label5:setLeft(620);
    obj.label5:setTop(400);
    obj.label5:setWidth(200);
    obj.label5:setHeight(20);
    obj.label5:setText("VERSÃO ATUAL:");
    obj.label5:setField("versionDownloaded");
    obj.label5:setName("label5");

    obj.checkBox1 = GUI.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox1:setParent(obj.scrollBox1);
    obj.checkBox1:setLeft(620);
    obj.checkBox1:setTop(425);
    obj.checkBox1:setWidth(200);
    obj.checkBox1:setHeight(20);
    obj.checkBox1:setField("noUpdate");
    obj.checkBox1:setText("Não pedir para atualizar.");
    obj.checkBox1:setName("checkBox1");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.scrollBox1);
    obj.button1:setLeft(620);
    obj.button1:setTop(475);
    obj.button1:setWidth(100);
    obj.button1:setText("Change Log");
    obj.button1:setName("button1");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.scrollBox1);
    obj.button2:setLeft(730);
    obj.button2:setTop(475);
    obj.button2:setWidth(100);
    obj.button2:setText("Atualizar");
    obj.button2:setName("button2");

    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.scrollBox1);
    obj.button3:setLeft(840);
    obj.button3:setTop(475);
    obj.button3:setWidth(100);
    obj.button3:setText("Tutorial");
    obj.button3:setName("button3");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.scrollBox1);
    obj.label6:setLeft(620);
    obj.label6:setTop(525);
    obj.label6:setWidth(120);
    obj.label6:setHeight(20);
    obj.label6:setText("CONHEÇA A MESA:");
    obj.label6:setFontSize(11);
    obj.label6:setName("label6");

    obj.button4 = GUI.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.scrollBox1);
    obj.button4:setLeft(730);
    obj.button4:setTop(525);
    obj.button4:setWidth(100);
    obj.button4:setText("RPGmeister");
    obj.button4:setName("button4");

    obj.button5 = GUI.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.scrollBox1);
    obj.button5:setLeft(840);
    obj.button5:setTop(525);
    obj.button5:setWidth(100);
    obj.button5:setHeight(20);
    obj.button5:setText("Exportar Ficha");
    obj.button5:setName("button5");

    obj.button6 = GUI.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj.scrollBox1);
    obj.button6:setLeft(950);
    obj.button6:setTop(525);
    obj.button6:setWidth(100);
    obj.button6:setHeight(20);
    obj.button6:setText("Importar Ficha");
    obj.button6:setName("button6");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (_)
            gui.openInBrowser('https://github.com/rrpgfirecast/firecast/blob/master/Plugins/Sheets/Ficha%20Anima%20RPG/README.md')
        end, obj);

    obj._e_event1 = obj.button2:addEventListener("onClick",
        function (_)
            gui.openInBrowser('https://github.com/rrpgfirecast/firecast/blob/master/Plugins/Sheets/Ficha%20Anima%20RPG/output/Ficha%20Anima%20RPG.rpk?raw=true')
        end, obj);

    obj._e_event2 = obj.button3:addEventListener("onClick",
        function (_)
            gui.openInBrowser('https://github.com/rrpgfirecast/firecast/blob/master/Plugins/Sheets/Ficha%20RPG%20meister/__Tutorial/Ficha%20RPG%20meister%20-%20Tutorial.docx?raw=true')
        end, obj);

    obj._e_event3 = obj.button4:addEventListener("onClick",
        function (_)
            gui.openInBrowser('http://firecast.rrpg.com.br:90/a?a=pagRWEMesaInfo.actInfoMesa&mesaid=64070');
        end, obj);

    obj._e_event4 = obj.button5:addEventListener("onClick",
        function (_)
            local export = ndb.load("export.xml");
            				export.clone = sheet;
            
            				setTimeout(
            						function ()
            							local stream = vhd.openFile("export.xml");
            							Dialogs.saveFile("Salvar Ficha como XML", stream, "ficha.xml", "application/xml",
            								function()
            									stream:close();
            									showMessage("Ficha Exportada.");
            								end);
            						end, 
            						2500
            					);
        end, obj);

    obj._e_event5 = obj.button6:addEventListener("onClick",
        function (_)
            Dialogs.openFile("Importar Ficha", "application/xml", false, 
            					function(arquivos)
            						local arq = arquivos[1];
            
            						-- Testar se deletar o arquivo funciona bem...
            		                if vhd.fileExists("import.xml") then
            		                    vhd.deleteFile("import.xml");
            		                end;
            						
            						local stream = vhd.openFile("import.xml", "w");
            						stream:copyFrom(arq.stream, arq.stream.size);
            
            						setTimeout(
            								function ()
            									stream:close();
            									local import = ndb.load("import.xml");
            									
            									local allAtts = ndb.getAttributes(import.clone);
            
            									local mesa = rrpg.getMesaDe(sheet);
            									for k, v in pairs(allAtts) do
            										sheet[k] = v;
            									end;
            									
            									sheet.campoDosAtaques = import.clone.campoDosAtaques;
            
            									sheet.campoDasPericias = import.clone.campoDasPericias;
            									sheet.campoDosIdiomas = import.clone.campoDosIdiomas;
            
            									sheet.campoDosTalentos = import.clone.campoDosTalentos;
            									sheet.campoDosOutros = import.clone.campoDosOutros;
            									sheet.campoDasCaracteristicasClasse = import.clone.campoDasCaracteristicasClasse;
            
            									sheet.campoDosItens = import.clone.campoDosItens;
            
            									sheet.campoDasArmas = import.clone.campoDasArmas;
            									sheet.itensConsumiveis = import.clone.itensConsumiveis;
            
            									sheet.campoDosCompanheiros = import.clone.campoDosCompanheiros;
            
            									import = {};
            
            									showMessage("Ficha Importada.");
            								end, 
            								3000
            							);
            
            					end);
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event5);
        __o_rrpgObjs.removeEventListenerById(self._e_event4);
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.checkBox1 ~= nil then self.checkBox1:destroy(); self.checkBox1 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
end;

local _frmFichaRPGmeister11_svg = {
    newEditor = newfrmFichaRPGmeister11_svg, 
    new = newfrmFichaRPGmeister11_svg, 
    name = "frmFichaRPGmeister11_svg", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmFichaRPGmeister11_svg = _frmFichaRPGmeister11_svg;
Firecast.registrarForm(_frmFichaRPGmeister11_svg);

return _frmFichaRPGmeister11_svg;
