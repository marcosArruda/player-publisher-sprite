/**
 * Created by marcosarruda on 2/24/15.
 */
package br.com.marcos {
import flash.text.TextField;
import flash.text.TextFieldType;
import flash.text.TextFormat;

public class TextFormatFactory {
        private static var textFormat:TextFormat;
        private static var labelFormat:TextFormat;

        labelFormat = new TextFormat();
        labelFormat.size = 14;
        labelFormat.color = 0x000000;
        labelFormat.bold = true;

        textFormat = new TextFormat();
        textFormat.size = 14;
        textFormat.color = 0x0d0d0d;

        public static function buildLabel(label:String):TextField
        {
            var lf:TextField = new TextField();
            lf.defaultTextFormat = labelFormat;
            lf.text = label;
            lf.width = 400;
            lf.height = 20;

            lf.background = true;
            lf.backgroundColor = 0xF8F8F8;
            return lf;
        }

        public static function buildInput():TextField
        {
            var tf:TextField = new TextField();
            tf.width = 400;
            tf.height = 20;
            tf.x = 410;

            tf.defaultTextFormat = textFormat;
            tf.text = "Add Text Here";
            tf.type = TextFieldType.INPUT;
            tf.defaultTextFormat = textFormat;
            tf.background = true;
            tf.backgroundColor = 0xE0E0E0;
            return tf;
        }
    }
}
