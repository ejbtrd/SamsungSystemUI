.class Lcom/android/systemui/statusbar/policy/MobileSignalController$5;
.super Ljava/lang/Object;
.source "MobileSignalController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mRetryCount:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 553
    :try_start_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;->mRetryCount:I

    .line 554
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$1200(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    .line 555
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$1000(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroidx/mediarouter/media/MediaRoute2Provider$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$1100(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    move-result-object v1

    .line 554
    invoke-virtual {v0, v2, v1}, Landroid/telephony/ims/ImsMmTelManager;->registerImsRegistrationCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    .line 556
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "registerImsRegistrationCallback succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 558
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;->mRetryCount:I

    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    .line 559
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/SignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;->mRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " registerImsRegistrationCallback failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 561
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$1000(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$5;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$1300(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void
.end method
