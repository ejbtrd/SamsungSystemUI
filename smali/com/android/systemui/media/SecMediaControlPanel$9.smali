.class Lcom/android/systemui/media/SecMediaControlPanel$9;
.super Landroid/content/BroadcastReceiver;
.source "SecMediaControlPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/SecMediaControlPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/SecMediaControlPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/SecMediaControlPanel;)V
    .locals 0

    .line 1308
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$9;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "enable"

    const/4 v0, 0x0

    .line 1311
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 1312
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DualPlayModeReceiver.onRecevie() = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",  mViewHolder.getAppName() = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/media/SecMediaControlPanel$9;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {v0}, Lcom/android/systemui/media/SecMediaControlPanel;->access$700(Lcom/android/systemui/media/SecMediaControlPanel;)Lcom/android/systemui/media/SecPlayerViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/media/SecPlayerViewHolder;->getAppName()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MediaControlPanel"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    iget-object p2, p0, Lcom/android/systemui/media/SecMediaControlPanel$9;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {p2, p1}, Lcom/android/systemui/media/SecMediaControlPanel;->access$2202(Lcom/android/systemui/media/SecMediaControlPanel;Z)Z

    .line 1314
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$9;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-static {p0}, Lcom/android/systemui/media/SecMediaControlPanel;->access$2300(Lcom/android/systemui/media/SecMediaControlPanel;)V

    return-void
.end method
