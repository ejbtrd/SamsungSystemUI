.class Lcom/android/systemui/qs/tiles/SoundModeTile$1;
.super Landroid/content/BroadcastReceiver;
.source "SoundModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;


# direct methods
.method public static synthetic $r8$lambda$Vl9qT8Q5sbTPLdqH91wRRTux1BM(Lcom/android/systemui/qs/tiles/SoundModeTile$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$1;->lambda$onReceive$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTile;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/SoundModeTile;->access$000(Lcom/android/systemui/qs/tiles/SoundModeTile;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/qs/tiles/SoundModeTile$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/SoundModeTile$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTile$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
