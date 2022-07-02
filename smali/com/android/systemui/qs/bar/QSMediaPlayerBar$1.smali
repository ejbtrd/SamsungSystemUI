.class Lcom/android/systemui/qs/bar/QSMediaPlayerBar$1;
.super Landroid/content/BroadcastReceiver;
.source "QSMediaPlayerBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/bar/QSMediaPlayerBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$1;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 157
    invoke-static {}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBootCompleteBroadcastReceiver.onReceive() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 159
    iget-object p0, p0, Lcom/android/systemui/qs/bar/QSMediaPlayerBar$1;->this$0:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-static {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->access$100(Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)V

    :cond_0
    return-void
.end method
