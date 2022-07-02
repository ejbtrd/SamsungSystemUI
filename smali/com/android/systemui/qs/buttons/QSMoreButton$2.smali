.class Lcom/android/systemui/qs/buttons/QSMoreButton$2;
.super Landroid/content/BroadcastReceiver;
.source "QSMoreButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/buttons/QSMoreButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/buttons/QSMoreButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/buttons/QSMoreButton;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMoreButton$2;->this$0:Lcom/android/systemui/qs/buttons/QSMoreButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QSMoreButton"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 99
    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMoreButton$2;->this$0:Lcom/android/systemui/qs/buttons/QSMoreButton;

    invoke-static {p0}, Lcom/android/systemui/qs/buttons/QSMoreButton;->access$100(Lcom/android/systemui/qs/buttons/QSMoreButton;)V

    :cond_0
    return-void
.end method
