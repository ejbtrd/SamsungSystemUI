.class Lcom/android/systemui/screenshot/TakeScreenshotService$1;
.super Landroid/os/Handler;
.source "TakeScreenshotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/TakeScreenshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 67
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 68
    new-instance v1, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService$1;Landroid/os/Messenger;)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Skipping screenshot because storage is locked!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 88
    :cond_0
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$100()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v0

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v2, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {v0, v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$102(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot;

    .line 92
    :cond_1
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$200()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 93
    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->initSystemUIAnalyticsStates(Landroid/app/Application;)V

    .line 94
    invoke-static {v2}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$202(Z)Z

    .line 97
    :cond_2
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    if-eq p0, v2, :cond_9

    const/4 v3, 0x2

    if-eq p0, v3, :cond_6

    const/16 v3, 0x64

    if-eq p0, v3, :cond_3

    goto :goto_6

    .line 105
    :cond_3
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$100()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object p0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-lez v3, :cond_4

    move v3, v2

    goto :goto_0

    :cond_4
    move v3, v0

    :goto_0
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-lez v4, :cond_5

    goto :goto_1

    :cond_5
    move v2, v0

    :goto_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v1, v3, v2, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshotWindow(Ljava/lang/Runnable;ZZLandroid/os/Bundle;)V

    goto :goto_6

    .line 102
    :cond_6
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$100()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object p0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-lez v3, :cond_7

    move v3, v2

    goto :goto_2

    :cond_7
    move v3, v0

    :goto_2
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-lez v4, :cond_8

    goto :goto_3

    :cond_8
    move v2, v0

    :goto_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v1, v3, v2, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshotPartial(Ljava/lang/Runnable;ZZLandroid/os/Bundle;)V

    goto :goto_6

    .line 99
    :cond_9
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$100()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object p0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-lez v3, :cond_a

    move v3, v2

    goto :goto_4

    :cond_a
    move v3, v0

    :goto_4
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-lez v4, :cond_b

    goto :goto_5

    :cond_b
    move v2, v0

    :goto_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v1, v3, v2, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZLandroid/os/Bundle;)V

    :goto_6
    return-void
.end method
