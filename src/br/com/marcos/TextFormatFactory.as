/**
 * Created by marcosarruda on 2/24/15.
 */
package br.com.marcos {
import br.com.marcos.TextFormatFactory;

import flash.display.Sprite;

import flash.text.TextField;
import flash.text.TextFieldType;
import flash.text.TextFormat;

    public class TextFormatFactory {
        private static var textFormat:TextFormat;
        private static var labelFormat:TextFormat;

        static{
            textFormat = new TextFormat();
            textFormat.size = 12;
            textFormat.color = 0x0d0d0d;

            labelFormat = new TextFormat();
            labelFormat.size = 14;
            labelFormat.color = 0x000000;
            labelFormat.bold = true;
        }
        public static function formatInputText(label:String):TextField
        {
            var lf:TextField = new TextField();
            lf.defaultTextFormat = labelFormat;
            lf.text = label;

            var tf:TextField = new TextField();
            tf.defaultTextFormat = textFormat;

            tf.text = "Add Text Here";
            tf.type = TextFieldType.INPUT;
            tf.defaultTextFormat = textFormat;
            tf.background = true;
            tf.height = 20;
            tf.backgroundColor = 0xf2f2f2;
            return tf;
        }
    }
}
