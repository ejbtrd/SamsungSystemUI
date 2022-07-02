.class public Lcom/android/keyguard/CarrierTextManager;
.super Ljava/lang/Object;
.source "CarrierTextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;,
        Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;,
        Lcom/android/keyguard/CarrierTextManager$Builder;,
        Lcom/android/keyguard/CarrierTextManager$StatusMode;
    }
.end annotation


# static fields
.field public static sPlmnOfNetworkControllerImpl:Ljava/lang/String; = ""

.field public static sVoWifiConnected:Z = false


# instance fields
.field private final mBgExecutor:Ljava/util/concurrent/Executor;

.field protected final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mCarrierTextCallback:Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;

.field private final mContext:Landroid/content/Context;

.field private final mIsEmergencyCallCapable:Z

.field protected mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field mKnoxStateCallback:Lcom/android/systemui/knox/KnoxStateMonitorCallback;

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private final mNetworkSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mPhoneStateListener:Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;

.field private final mSeparator:Ljava/lang/CharSequence;

.field private final mShowAirplaneMode:Z

.field private final mShowMissingSim:Z

.field private final mSimErrorState:[Z

.field private mSimNetworkLock:[Z

.field private final mSimSlotsNumber:I

.field private mTelephonyCapable:Z

.field private final mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field private final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$AVoKHWf3b_1Bxc2e2GmzD8DI0D0(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/CarrierTextManager;->lambda$postToCallback$7(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L9d1mgw5vNjn8Mg05dhUwzOrxVU(Lcom/android/keyguard/CarrierTextManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextManager;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZqK5UwU7uWCT71YTg_9lhQQux6k(Lcom/android/keyguard/CarrierTextManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextManager;->lambda$handleSetListening$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$a2kF-M13E9YzuWOt98Hd4rZV6KI(Lcom/android/keyguard/CarrierTextManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextManager;->lambda$handleSetListening$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$bxo6Tu9BFjhDE_xUJu3EWR9Er7U(Lcom/android/keyguard/CarrierTextManager;Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierTextManager;->lambda$setListening$6(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mqc343rQnEiHAveUvlluU5Huw4g(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/android/keyguard/CarrierTextManager;->lambda$handleSetListening$3(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qsU3CK-79SIbunT0BuRXQFz8--4(Lcom/android/keyguard/CarrierTextManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextManager;->lambda$handleSetListening$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$yPhTveG85QRLdQUPcWaqi_CIZI0(Lcom/android/keyguard/CarrierTextManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextManager;->lambda$handleSetListening$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;ZZLandroid/net/wifi/WifiManager;Landroid/telephony/TelephonyManager;Lcom/android/systemui/telephony/TelephonyListenerManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/CarrierTextManager;->mNetworkSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 101
    new-instance p2, Lcom/android/keyguard/CarrierTextManager$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/CarrierTextManager$1;-><init>(Lcom/android/keyguard/CarrierTextManager;)V

    iput-object p2, p0, Lcom/android/keyguard/CarrierTextManager;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 116
    new-instance p2, Lcom/android/keyguard/CarrierTextManager$2;

    invoke-direct {p2, p0}, Lcom/android/keyguard/CarrierTextManager$2;-><init>(Lcom/android/keyguard/CarrierTextManager;)V

    iput-object p2, p0, Lcom/android/keyguard/CarrierTextManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 183
    new-instance p2, Lcom/android/keyguard/CarrierTextManager$3;

    invoke-direct {p2, p0}, Lcom/android/keyguard/CarrierTextManager$3;-><init>(Lcom/android/keyguard/CarrierTextManager;)V

    iput-object p2, p0, Lcom/android/keyguard/CarrierTextManager;->mPhoneStateListener:Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;

    .line 193
    new-instance p2, Lcom/android/keyguard/CarrierTextManager$4;

    invoke-direct {p2, p0}, Lcom/android/keyguard/CarrierTextManager$4;-><init>(Lcom/android/keyguard/CarrierTextManager;)V

    iput-object p2, p0, Lcom/android/keyguard/CarrierTextManager;->mKnoxStateCallback:Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    .line 236
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    .line 237
    invoke-virtual {p6}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/keyguard/CarrierTextManager;->mIsEmergencyCallCapable:Z

    .line 239
    iput-boolean p3, p0, Lcom/android/keyguard/CarrierTextManager;->mShowAirplaneMode:Z

    .line 240
    iput-boolean p4, p0, Lcom/android/keyguard/CarrierTextManager;->mShowMissingSim:Z

    .line 242
    iput-object p5, p0, Lcom/android/keyguard/CarrierTextManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 243
    iput-object p6, p0, Lcom/android/keyguard/CarrierTextManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string p1, " | "

    .line 245
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mSeparator:Ljava/lang/CharSequence;

    .line 249
    iput-object p7, p0, Lcom/android/keyguard/CarrierTextManager;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    .line 250
    iput-object p8, p0, Lcom/android/keyguard/CarrierTextManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 251
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/CarrierTextManager;->mSimSlotsNumber:I

    .line 252
    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/android/keyguard/CarrierTextManager;->mSimErrorState:[Z

    .line 254
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mSimNetworkLock:[Z

    .line 256
    iput-object p9, p0, Lcom/android/keyguard/CarrierTextManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 257
    iput-object p10, p0, Lcom/android/keyguard/CarrierTextManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 258
    iput-object p11, p0, Lcom/android/keyguard/CarrierTextManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 259
    new-instance p1, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/CarrierTextManager;)V

    invoke-interface {p10, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;ZZLandroid/net/wifi/WifiManager;Landroid/telephony/TelephonyManager;Lcom/android/systemui/telephony/TelephonyListenerManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/CarrierTextManager$1;)V
    .locals 0

    .line 63
    invoke-direct/range {p0 .. p11}, Lcom/android/keyguard/CarrierTextManager;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;ZZLandroid/net/wifi/WifiManager;Landroid/telephony/TelephonyManager;Lcom/android/systemui/telephony/TelephonyListenerManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/CarrierTextManager;)Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/CarrierTextManager;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/android/keyguard/CarrierTextManager;->mTelephonyCapable:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/keyguard/CarrierTextManager;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/android/keyguard/CarrierTextManager;->mTelephonyCapable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/CarrierTextManager;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/android/keyguard/CarrierTextManager;->mSimSlotsNumber:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/CarrierTextManager;I)Lcom/android/keyguard/CarrierTextManager$StatusMode;
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierTextManager;->getStatusForIccState(I)Lcom/android/keyguard/CarrierTextManager$StatusMode;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/CarrierTextManager;)[Z
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mSimErrorState:[Z

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/CarrierTextManager;)[Z
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mSimNetworkLock:[Z

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/CarrierTextManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mNetworkSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private static concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 737
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 738
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    if-eqz v1, :cond_2

    return-object p1

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method private getCarrierTextForSimState(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 566
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierTextManager;->getStatusForIccState(I)Lcom/android/keyguard/CarrierTextManager$StatusMode;

    move-result-object p1

    .line 567
    sget-object v0, Lcom/android/keyguard/CarrierTextManager$5;->$SwitchMap$com$android$keyguard$CarrierTextManager$StatusMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, ""

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    move-object p2, v1

    goto/16 :goto_1

    .line 649
    :pswitch_1
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextManager;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->keyguard_sim_error_message_short:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 648
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierTextManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto/16 :goto_1

    .line 634
    :pswitch_2
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextManager;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->keyguard_sim_puk_locked_message:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 635
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_1

    .line 636
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextManager;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->kg_puk_locked_message:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 638
    :cond_1
    sget-boolean p0, Lcom/android/systemui/LsRune;->SECURITY_DIRECT_CALL_TO_ECC:Z

    if-eqz p0, :cond_3

    goto/16 :goto_1

    .line 618
    :pswitch_3
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextManager;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->kg_sim_locked_message:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 619
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz v0, :cond_2

    .line 620
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextManager;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->kg_pin_locked_message:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 622
    :cond_2
    sget-boolean p0, Lcom/android/systemui/LsRune;->SECURITY_DIRECT_CALL_TO_ECC:Z

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move-object p2, p1

    goto :goto_1

    .line 609
    :pswitch_4
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz p1, :cond_0

    .line 612
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextManager;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->kg_missing_sim_message_short:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 611
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierTextManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    .line 598
    :pswitch_5
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextManager;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$string;->keyguard_permanent_disabled_sim_message_short:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 597
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierTextManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 601
    sget-boolean p0, Lcom/android/systemui/LsRune;->SECURITY_KOR_USIM_TEXT:Z

    if-eqz p0, :cond_4

    goto :goto_0

    .line 588
    :pswitch_6
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextManager;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->kg_perso_locked_message:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    .line 582
    :pswitch_7
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->keyguard_network_locked_message:I

    .line 583
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 582
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/CarrierTextManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :goto_0
    :pswitch_8
    move-object p2, v0

    goto :goto_1

    .line 570
    :pswitch_9
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextManager;->isRTL()Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "\u200f"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_4
    :goto_1
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getContext()Landroid/content/Context;
    .locals 0

    .line 544
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getMissingSimMessage()Ljava/lang/String;
    .locals 1

    .line 548
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierTextManager;->mShowMissingSim:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/CarrierTextManager;->mTelephonyCapable:Z

    if-eqz v0, :cond_0

    .line 549
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextManager;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->kg_missing_sim_message_short:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private getStatusForIccState(I)Lcom/android/keyguard/CarrierTextManager$StatusMode;
    .locals 1

    .line 695
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 696
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-eq p1, v0, :cond_1

    const/4 p0, 0x7

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const/4 p1, 0x4

    :cond_2
    const/16 p0, 0xc

    if-eq p1, p0, :cond_4

    packed-switch p1, :pswitch_data_0

    .line 732
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimUnknown:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    return-object p0

    .line 726
    :pswitch_0
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimIoError:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    return-object p0

    .line 722
    :pswitch_1
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    return-object p0

    .line 714
    :pswitch_2
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    return-object p0

    .line 720
    :pswitch_3
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->Normal:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    return-object p0

    :pswitch_4
    if-eqz v0, :cond_3

    .line 708
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    goto :goto_1

    .line 709
    :cond_3
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->NetworkLocked:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    :goto_1
    return-object p0

    .line 718
    :pswitch_5
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    return-object p0

    .line 716
    :pswitch_6
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    return-object p0

    .line 704
    :pswitch_7
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    return-object p0

    .line 724
    :pswitch_8
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->SimUnknown:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    return-object p0

    .line 729
    :cond_4
    sget-object p0, Lcom/android/keyguard/CarrierTextManager$StatusMode;->PersoLocked:Lcom/android/keyguard/CarrierTextManager$StatusMode;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private handleSetListening(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;)V
    .locals 2

    .line 328
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    if-eqz p1, :cond_1

    .line 329
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;

    .line 330
    iget-object v1, p0, Lcom/android/keyguard/CarrierTextManager;->mNetworkSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/keyguard/CarrierTextManager;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 334
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/CarrierTextManager;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 338
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    iget-object v1, p0, Lcom/android/keyguard/CarrierTextManager;->mPhoneStateListener:Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;

    invoke-virtual {p1, v1}, Lcom/android/systemui/telephony/TelephonyListenerManager;->addActiveDataSubscriptionIdListener(Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;)V

    .line 340
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mKnoxStateCallback:Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    invoke-interface {p1, p0}, Lcom/android/systemui/knox/KnoxStateMonitor;->registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    goto :goto_0

    .line 344
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 349
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;

    .line 350
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/keyguard/CarrierTextManager;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 352
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/CarrierTextManager;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 356
    iget-object p1, p0, Lcom/android/keyguard/CarrierTextManager;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    iget-object v1, p0, Lcom/android/keyguard/CarrierTextManager;->mPhoneStateListener:Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;

    invoke-virtual {p1, v1}, Lcom/android/systemui/telephony/TelephonyListenerManager;->removeActiveDataSubscriptionIdListener(Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;)V

    .line 358
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mKnoxStateCallback:Lcom/android/systemui/knox/KnoxStateMonitorCallback;

    invoke-interface {p1, p0}, Lcom/android/systemui/knox/KnoxStateMonitor;->removeCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    :goto_0
    return-void
.end method

.method private isEmergencyCallEnableWhenNoSIM()Z
    .locals 2

    .line 881
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    const v1, 0x7ffffffb

    .line 882
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ServiceState;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 883
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 886
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_MULTI_SIM:Z

    if-eqz v0, :cond_1

    .line 887
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    const v0, 0x7ffffffc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ServiceState;

    if-eqz p0, :cond_1

    .line 888
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isRTL()Z
    .locals 1

    .line 871
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 p0, p0, 0xc0

    const/16 v0, 0x80

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static joinNotEmpty(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .line 755
    array-length v0, p1

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 757
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 759
    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 760
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 761
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 763
    :cond_1
    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 766
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$handleSetListening$1()V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$handleSetListening$2()V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$handleSetListening$3(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;)V
    .locals 4

    .line 344
    new-instance v0, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;-><init>(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z[I)V

    invoke-interface {p0, v0}, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;->updateCarrierInfo(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;)V

    return-void
.end method

.method private synthetic lambda$handleSetListening$4()V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private synthetic lambda$handleSetListening$5()V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextManager;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    .line 261
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/keyguard/CarrierTextManager;->mNetworkSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextManager;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;

    invoke-direct {p0, v0}, Lcom/android/keyguard/CarrierTextManager;->handleSetListening(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$postToCallback$7(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;)V
    .locals 0

    .line 539
    invoke-interface {p0, p1}, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;->updateCarrierInfo(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;)V

    return-void
.end method

.method private synthetic lambda$setListening$6(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;)V
    .locals 0

    .line 370
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierTextManager;->handleSetListening(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;)V

    return-void
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 665
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierTextManager;->mIsEmergencyCallCapable:Z

    if-eqz v0, :cond_0

    .line 666
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {p1, p2, p0}, Lcom/android/keyguard/CarrierTextManager;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private updateCarrierTextWithSimIoError(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[IZ)Ljava/lang/CharSequence;
    .locals 5

    const/16 v0, 0x8

    const-string v1, ""

    .line 286
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/CarrierTextManager;->getCarrierTextForSimState(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    .line 289
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextManager;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 290
    iget-object v2, p0, Lcom/android/keyguard/CarrierTextManager;->mSimErrorState:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    .line 297
    invoke-direct {p0}, Lcom/android/keyguard/CarrierTextManager;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x1040443

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mSeparator:Ljava/lang/CharSequence;

    .line 296
    invoke-static {v0, p1, p0}, Lcom/android/keyguard/CarrierTextManager;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 300
    :cond_1
    aget v2, p3, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 301
    aget v2, p3, v1

    .line 303
    aget-object v3, p2, v2

    iget-object v4, p0, Lcom/android/keyguard/CarrierTextManager;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {v0, v3, v4}, Lcom/android/keyguard/CarrierTextManager;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, p2, v2

    goto :goto_1

    .line 308
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/CarrierTextManager;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {p1, v0, v2}, Lcom/android/keyguard/CarrierTextManager;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method


# virtual methods
.method protected getSubscriptionInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 374
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFilteredSubscriptionInfo(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected postToCallback(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;)V
    .locals 2

    .line 537
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextManager;->mCarrierTextCallback:Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;

    if-eqz v0, :cond_0

    .line 539
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setListening(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;)V
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/android/keyguard/CarrierTextManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/keyguard/CarrierTextManager;Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected updateCarrierText()V
    .locals 18

    move-object/from16 v0, p0

    .line 381
    iget-object v1, v0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    const v2, 0x104064b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextManager;->getSubscriptionInfo()Ljava/util/List;

    move-result-object v2

    .line 386
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 387
    new-array v8, v3, [I

    .line 390
    iget v4, v0, Lcom/android/keyguard/CarrierTextManager;->mSimSlotsNumber:I

    new-array v4, v4, [I

    const/4 v6, 0x0

    .line 391
    :goto_0
    iget v7, v0, Lcom/android/keyguard/CarrierTextManager;->mSimSlotsNumber:I

    if-ge v6, v7, :cond_0

    const/4 v7, -0x1

    .line 392
    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 394
    :cond_0
    new-array v6, v3, [Ljava/lang/CharSequence;

    .line 395
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateCarrierText(): "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "CarrierTextController"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    :goto_1
    const-string v13, ""

    if-ge v10, v3, :cond_5

    .line 398
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v14}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v14

    .line 399
    aput-object v13, v6, v10

    .line 400
    aput v14, v8, v10

    .line 401
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v13

    aput v10, v4, v13

    .line 402
    iget-object v13, v0, Lcom/android/keyguard/CarrierTextManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v13, v14}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)I

    move-result v13

    .line 403
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v15}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v15

    .line 404
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextManager;->isRTL()Z

    move-result v16

    const-string v7, "dea!"

    if-eqz v16, :cond_1

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    move-object v15, v7

    .line 407
    :cond_1
    invoke-direct {v0, v13, v15}, Lcom/android/keyguard/CarrierTextManager;->getCarrierTextForSimState(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 409
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v8

    const-string v8, "Handling (subId="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "): "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "carrierTextForSimState = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_2

    .line 414
    aput-object v7, v6, v10

    const/4 v11, 0x0

    :cond_2
    const/4 v5, 0x5

    if-ne v13, v5, :cond_4

    .line 417
    iget-object v5, v0, Lcom/android/keyguard/CarrierTextManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/ServiceState;

    if-eqz v5, :cond_4

    .line 418
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v7

    if-nez v7, :cond_4

    .line 421
    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v7

    const/16 v8, 0x12

    if-ne v7, v8, :cond_3

    iget-object v7, v0, Lcom/android/keyguard/CarrierTextManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v7, :cond_4

    .line 422
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/android/keyguard/CarrierTextManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 423
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/android/keyguard/CarrierTextManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 424
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 426
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM ready and in service: subId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", ss="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    :cond_4
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v8, v17

    goto/16 :goto_1

    :cond_5
    move-object/from16 v17, v8

    const/4 v5, 0x0

    if-eqz v11, :cond_e

    if-nez v12, :cond_e

    if-eqz v3, :cond_6

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextManager;->getMissingSimMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 443
    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierTextManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    goto/16 :goto_5

    :cond_6
    const/4 v3, 0x0

    .line 450
    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_CLEAR_NO_SIM_DEFAULT_TEXT:Z

    const v7, 0x1040443

    if-eqz v2, :cond_7

    move-object v2, v13

    goto :goto_2

    .line 451
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 452
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextManager;->getContext()Landroid/content/Context;

    move-result-object v8

    new-instance v10, Landroid/content/IntentFilter;

    const-string v12, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    invoke-direct {v10, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 456
    iget-object v2, v0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 457
    sget-object v5, Lcom/android/keyguard/CarrierTextManager;->sPlmnOfNetworkControllerImpl:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    sget-object v5, Lcom/android/keyguard/CarrierTextManager;->sPlmnOfNetworkControllerImpl:Ljava/lang/String;

    .line 458
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    sget-object v5, Lcom/android/keyguard/CarrierTextManager;->sPlmnOfNetworkControllerImpl:Ljava/lang/String;

    .line 459
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 460
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "plmn Of NetworkController Impl : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/keyguard/CarrierTextManager;->sPlmnOfNetworkControllerImpl:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    sget-object v2, Lcom/android/keyguard/CarrierTextManager;->sPlmnOfNetworkControllerImpl:Ljava/lang/String;

    goto :goto_3

    .line 462
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextManager;->isEmergencyCallEnableWhenNoSIM()Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_3

    :cond_a
    move-object v2, v1

    .line 468
    :goto_3
    sget-boolean v5, Lcom/android/systemui/LsRune;->SECURITY_DISAPPEAR_DEFAULT_CARRIER_TEXT:Z

    if-eqz v5, :cond_b

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 469
    iget-object v1, v0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->kg_default_carrier_text_searching:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 488
    :cond_b
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_BLOCK_CARRIER_TEXT_WHEN_SIM_NOT_READY:Z

    if-nez v1, :cond_d

    iget-object v1, v0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/DeviceType;->isWiFiOnlyDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_4

    .line 492
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextManager;->getMissingSimMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierTextManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_5

    :cond_d
    :goto_4
    const-string v1, "BLOCK_CARRIER_TEXT_WHEN_SIM_NOT_READY or KOR_USIM_TEXT"

    .line 489
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v13

    goto :goto_5

    :cond_e
    const/4 v3, 0x0

    .line 497
    :goto_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/android/keyguard/CarrierTextManager;->mSeparator:Ljava/lang/CharSequence;

    invoke-static {v1, v6}, Lcom/android/keyguard/CarrierTextManager;->joinNotEmpty(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 499
    :cond_f
    invoke-direct {v0, v5, v6, v4, v11}, Lcom/android/keyguard/CarrierTextManager;->updateCarrierTextWithSimIoError(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[IZ)Ljava/lang/CharSequence;

    move-result-object v1

    .line 505
    iget-object v2, v0, Lcom/android/keyguard/CarrierTextManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 507
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierTextManager;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->kg_flight_mode:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 508
    sget-boolean v2, Lcom/android/keyguard/CarrierTextManager;->sVoWifiConnected:Z

    if-eqz v2, :cond_10

    const-string v1, "WFC PLMN INFO"

    .line 509
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    sget-object v1, Lcom/android/keyguard/CarrierTextManager;->sPlmnOfNetworkControllerImpl:Ljava/lang/String;

    :cond_10
    const/4 v3, 0x1

    .line 519
    :cond_11
    const-class v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v2}, Lcom/android/systemui/knox/KnoxStateMonitor;->isCarrierTextEnabled()Z

    move-result v2

    if-nez v2, :cond_12

    const-string v1, "CarrierText is clear by knoxstate"

    .line 520
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v13

    goto :goto_6

    :cond_12
    move-object v5, v1

    .line 525
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setText : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    new-instance v1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;

    const/4 v2, 0x1

    xor-int/lit8 v7, v11, 0x1

    move-object v4, v1

    move-object/from16 v8, v17

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;-><init>(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Z[IZ)V

    .line 532
    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierTextManager;->postToCallback(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;)V

    return-void
.end method
