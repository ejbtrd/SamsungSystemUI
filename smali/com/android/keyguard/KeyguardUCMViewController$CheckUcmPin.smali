.class abstract Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;
.super Ljava/lang/Thread;
.source "KeyguardUCMViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUCMViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckUcmPin"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/keyguard/KeyguardUCMViewController;


# direct methods
.method public static synthetic $r8$lambda$PRdq7WW0n8-vTUlzhHzuX-cwYuE(Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->lambda$run$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$xh2TX7eeEmmb-yrZnR1mQY5sfp0(Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;[ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->lambda$run$0([ILandroid/os/Bundle;)V

    return-void
.end method

.method constructor <init>(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;)V
    .locals 1

    .line 452
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string p1, "KeyguardUCMPinView"

    const-string v0, "new CheckUcmPin"

    .line 453
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iput-object p2, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->mPin:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$run$0([ILandroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    .line 478
    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->onVerifyPinResponse(IIILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$run$1()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 481
    invoke-virtual {p0, v0, v0, v0, v1}, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->onVerifyPinResponse(IIILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method abstract onVerifyPinResponse(IIILandroid/os/Bundle;)V
.end method

.method public run()V
    .locals 6

    const-string v0, " "

    const-string v1, "KeyguardUCMPinView"

    .line 462
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->mPin:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardUCMViewController;->access$900(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;)[I

    move-result-object v2

    .line 464
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "supplyPinReportResult returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget v5, v2, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget v5, v2, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    aget v0, v2, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->access$1000()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const-string v5, "In race condition, stop unlock operation"

    if-nez v0, :cond_0

    .line 467
    :try_start_1
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {v0, v3}, Lcom/android/keyguard/KeyguardUCMViewController;->access$1102(Lcom/android/keyguard/KeyguardUCMViewController;Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;)Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;

    return-void

    .line 471
    :cond_0
    aget v0, v2, v4

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMViewController;->access$1200(I)Landroid/os/Bundle;

    move-result-object v0

    .line 472
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->access$1000()Z

    move-result v4

    if-nez v4, :cond_1

    .line 473
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {v0, v3}, Lcom/android/keyguard/KeyguardUCMViewController;->access$1102(Lcom/android/keyguard/KeyguardUCMViewController;Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;)Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;

    return-void

    .line 478
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUCMViewController;->access$1300(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUCMView;

    new-instance v4, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2, v0}, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;[ILandroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Exception for verifyPIN : "

    .line 480
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 481
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->this$0:Lcom/android/keyguard/KeyguardUCMViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMViewController;->access$1400(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUCMView;

    new-instance v1, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
