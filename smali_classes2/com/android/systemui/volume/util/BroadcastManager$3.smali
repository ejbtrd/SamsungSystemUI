.class Lcom/android/systemui/volume/util/BroadcastManager$3;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/util/BroadcastManager;->registerAllSoundOffAction(Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/util/BroadcastManager;

.field final synthetic val$allSoundOff:Ljava/util/function/Consumer;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/util/BroadcastManager;Ljava/util/function/Consumer;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/systemui/volume/util/BroadcastManager$3;->this$0:Lcom/android/systemui/volume/util/BroadcastManager;

    iput-object p2, p0, Lcom/android/systemui/volume/util/BroadcastManager$3;->val$allSoundOff:Ljava/util/function/Consumer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 127
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/util/BroadcastManager$3;->val$allSoundOff:Ljava/util/function/Consumer;

    const-string/jumbo p1, "mute"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    move v0, p2

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
