/**
 * Created by marcosarruda on 2/24/15.
 */
package br.com.marcos {
import flash.display.Sprite;
import flash.text.TextField;

    public class FormItemContainer extends Sprite{

        private var labelText:TextField;
        private var inputText:TextField;

        public function FormItemContainer(label:String) {
            super();

            labelText = TextFormatFactory.buildLabel(label);
            inputText = TextFormatFactory.buildInput();
            this.addChild(labelText);
            this.addChild(inputText);
        }

        public function getTextValue():String {
            return inputText.text;
        }
    }
}
