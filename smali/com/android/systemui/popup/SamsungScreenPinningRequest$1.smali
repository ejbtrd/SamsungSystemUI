.class Lcom/android/systemui/popup/SamsungScreenPinningRequest$1;
.super Landroid/content/BroadcastReceiver;
.source "SamsungScreenPinningRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/popup/SamsungScreenPinningRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/popup/SamsungScreenPinningRequest;


# direct methods
.method constructor <init>(Lcom/android/systemui/popup/SamsungScreenPinningRequest;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest$1;->this$0:Lcom/android/systemui/popup/SamsungScreenPinningRequest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 296
    iget-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest$1;->this$0:Lcom/android/systemui/popup/SamsungScreenPinningRequest;

    invoke-static {p1}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->access$000(Lcom/android/systemui/popup/SamsungScreenPinningRequest;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest$1;->this$0:Lcom/android/systemui/popup/SamsungScreenPinningRequest;

    invoke-static {p1}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->access$000(Lcom/android/systemui/popup/SamsungScreenPinningRequest;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 297
    iget-object p0, p0, Lcom/android/systemui/popup/SamsungScreenPinningRequest$1;->this$0:Lcom/android/systemui/popup/SamsungScreenPinningRequest;

    invoke-virtual {p0}, Lcom/android/systemui/popup/SamsungScreenPinningRequest;->clearPrompt()V

    :cond_0
    return-void
.end method
