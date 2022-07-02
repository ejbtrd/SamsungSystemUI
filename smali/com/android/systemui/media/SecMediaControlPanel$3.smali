.class Lcom/android/systemui/media/SecMediaControlPanel$3;
.super Ljava/lang/Object;
.source "SecMediaControlPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/SecMediaControlPanel;->bind(Lcom/android/systemui/media/MediaData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/SecMediaControlPanel;

.field final synthetic val$data:Lcom/android/systemui/media/MediaData;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/SecMediaControlPanel;Lcom/android/systemui/media/MediaData;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$3;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    iput-object p2, p0, Lcom/android/systemui/media/SecMediaControlPanel$3;->val$data:Lcom/android/systemui/media/MediaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 439
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel$3;->val$data:Lcom/android/systemui/media/MediaData;

    .line 440
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QPNE0018"

    const-string v2, "app"

    .line 439
    invoke-static {p1, v1, v2, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_STYLE_MEDIA_PLAYER_MEDIA_OUTPUT_POPUP:Z

    const-string v0, "MediaControlPanel"

    if-nez p1, :cond_0

    const-string/jumbo p1, "startMediaActivity()"

    .line 452
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$3;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$3;->val$data:Lcom/android/systemui/media/MediaData;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/systemui/media/SecMediaControlPanel;->access$600(Lcom/android/systemui/media/SecMediaControlPanel;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "MEDIA_OUTPUT_OPEN"

    .line 444
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$3;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {p1}, Lcom/android/systemui/media/SecMediaControlPanel;->access$100(Lcom/android/systemui/media/SecMediaControlPanel;)Lcom/android/systemui/media/SecMediaControlPanel$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel$3;->val$data:Lcom/android/systemui/media/MediaData;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$3;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->access$500(Lcom/android/systemui/media/SecMediaControlPanel;)Landroid/media/session/MediaSession$Token;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/android/systemui/media/SecMediaControlPanel$Callback;->showMediaOutput(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)V

    :goto_0
    return-void
.end method
