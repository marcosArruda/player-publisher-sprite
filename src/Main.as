package {

import br.com.marcos.TextFormatFactory;

import flash.display.Sprite;
import flash.display.StageAlign;
import flash.display.StageScaleMode;
import flash.text.TextField;
import flash.text.TextFieldType;

import org.osmf.elements.VideoElement;
import org.osmf.media.MediaPlayerSprite;
import org.osmf.net.DynamicStreamingItem;
import org.osmf.net.DynamicStreamingResource;

public class Main extends Sprite {

        private var playerWidth:Number = 1280;
        private var playerHeight:Number = 720;

        public function Main() {
            super();
            stage.scaleMode = StageScaleMode.NO_SCALE;
            stage.align = StageAlign.TOP_LEFT;

            var t1:TextField = TextFormatFactory.formatInputText("rtmp://host:port/application");
            addChild(t1);

            var playerSprite:MediaPlayerSprite = new MediaPlayerSprite();
            var videoElement:VideoElement = new VideoElement();
            var dynResource:DynamicStreamingResource = new DynamicStreamingResource("rtmp://54.94.202.33:1935/live");
            dynResource.streamType = "live";
            dynResource.streamItems = Vector.<DynamicStreamingItem>([
                new DynamicStreamingItem("myStream", 1000)
            ]);
            videoElement.resource = dynResource;
            playerSprite.width = playerWidth;
            playerSprite.height = playerHeight;
            addChild(playerSprite);
            playerSprite.mediaPlayer.autoPlay = true;
            playerSprite.media = videoElement;

            /*

             stage.displayState=StageDisplayState.FULL_SCREEN;
             container.width = stage.stageWidth;
             container.height = stage.stageHeight;


             <s:VideoDisplay id="videoComponent" width="800" height="600" opaqueBackground="true">
             <s:DynamicStreamingVideoSource host="rtmp://54.94.202.33:1935/live" streamType="live">
             <s:DynamicStreamingVideoItem streamName="myStream" bitrate="1000"/>
             </s:DynamicStreamingVideoSource>
             </s:VideoDisplay>
             */
        }
    }
}
