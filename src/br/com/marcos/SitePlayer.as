/**
 * Created by marcosarruda on 2/24/15.
 */
package br.com.marcos {
import org.osmf.elements.VideoElement;
import org.osmf.media.MediaPlayerSprite;
import org.osmf.net.DynamicStreamingItem;
import org.osmf.net.DynamicStreamingResource;
import org.osmf.net.StreamType;

public class SitePlayer extends MediaPlayerSprite{
    public function SitePlayer(w:int=640,h:int=360) {
        super();
        var videoElement:VideoElement = new VideoElement();
        var dynResource:DynamicStreamingResource = new DynamicStreamingResource(StreamApp.MYSERVER_LIVE);
        dynResource.streamType = StreamType.LIVE;
        dynResource.streamItems = Vector.<DynamicStreamingItem>([
            new DynamicStreamingItem(StreamName.MYSTREAM, 1000)
        ]);
        videoElement.resource = dynResource;
        this.width = w;
        this.height = h;
        this.x = 10;
        this.y = 30;
        this.mediaPlayer.autoPlay = true;
        this.media = videoElement;
    }

}


}
