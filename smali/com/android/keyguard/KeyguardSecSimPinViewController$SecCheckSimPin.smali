.class abstract Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;
.super Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;
.source "KeyguardSecSimPinViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecSimPinViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "SecCheckSimPin"
.end annotation


# instance fields
.field private mRequestTime:J

.field private mResponseTime:J

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;


# direct methods
.method public static synthetic $r8$lambda$CxVr0jUDnBREvtUdTMzIra_Jph8(Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;->lambda$run$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZSCIKyqUtw7FL1X_C0k-lqZcnKg(Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;Landroid/telephony/PinResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;->lambda$run$1(Landroid/telephony/PinResult;)V

    return-void
.end method

.method constructor <init>(Lcom/android/keyguard/KeyguardSecSimPinViewController;Ljava/lang/String;I)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    .line 384
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;-><init>(Lcom/android/keyguard/KeyguardSimPinViewController;Ljava/lang/String;I)V

    const-wide/16 p1, 0x0

    .line 385
    iput-wide p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;->mRequestTime:J

    .line 386
    iput-wide p1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;->mResponseTime:J

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 1

    .line 402
    invoke-static {}, Landroid/telephony/PinResult;->getDefaultFailedResult()Landroid/telephony/PinResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;->onSimCheckResponse(Landroid/telephony/PinResult;)V

    return-void
.end method

.method private synthetic lambda$run$1(Landroid/telephony/PinResult;)V
    .locals 0

    .line 407
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;->onSimCheckResponse(Landroid/telephony/PinResult;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call supplyPinReportResultForSubscriber(subid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecSimPinViewController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinViewController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;->mSubId:I

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 396
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;->mRequestTime:J

    .line 397
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;->mPin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->supplyIccLockPin(Ljava/lang/String;)Landroid/telephony/PinResult;

    move-result-object v0

    .line 398
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;->mResponseTime:J

    if-nez v0, :cond_0

    const-string v0, "Error result for supplyPinReportResult."

    .line 401
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->access$900(Lcom/android/keyguard/KeyguardSecSimPinViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecSimPinView;

    new-instance v1, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 405
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "supplyPinReportResult returned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/PinResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;->this$0:Lcom/android/keyguard/KeyguardSecSimPinViewController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecSimPinViewController;->access$1000(Lcom/android/keyguard/KeyguardSecSimPinViewController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardSecSimPinView;

    new-instance v2, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardSecSimPinViewController$SecCheckSimPin;Landroid/telephony/PinResult;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
