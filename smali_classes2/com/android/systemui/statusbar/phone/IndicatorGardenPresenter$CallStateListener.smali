.class Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$CallStateListener;
.super Landroid/content/BroadcastReceiver;
.source "IndicatorGardenPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStateListener"
.end annotation


# instance fields
.field private mIsRegistered:Z

.field private mPrvIsCalling:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;


# direct methods
.method public static synthetic $r8$lambda$-K9UAY1eA71DGnWPvMl2k7UWP-k(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$CallStateListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$CallStateListener;->lambda$onReceive$0()V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$CallStateListener;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$1;)V
    .locals 0

    .line 372
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$CallStateListener;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;)V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$CallStateListener;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->updateAllInputProperties()V

    .line 385
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callStateChanged(BG_HANDLER) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$CallStateListener;->this$0:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->mInputProperty:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperty;->getDumpString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[IndicatorGarden]Presenter"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 379
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 380
    :cond_1
    sget-object p1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    const-string/jumbo v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 381
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$CallStateListener;->mPrvIsCalling:Z

    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    .line 382
    new-instance p2, Landroid/os/Handler;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$CallStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$CallStateListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$CallStateListener;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 390
    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$CallStateListener;->mPrvIsCalling:Z

    return-void
.end method

.method public registerReceiver(Landroid/content/Context;)V
    .locals 2

    .line 394
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$CallStateListener;->mIsRegistered:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PHONE_STATE"

    .line 396
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 398
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter$CallStateListener;->mIsRegistered:Z

    :cond_1
    :goto_0
    return-void
.end method
