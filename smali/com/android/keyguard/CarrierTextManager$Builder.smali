.class public Lcom/android/keyguard/CarrierTextManager$Builder;
.super Ljava/lang/Object;
.source "CarrierTextManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CarrierTextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mBgExecutor:Ljava/util/concurrent/Executor;

.field private final mContext:Landroid/content/Context;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private final mSeparator:Ljava/lang/String;

.field private mShowAirplaneMode:Z

.field private mShowMissingSim:Z

.field private final mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/net/wifi/WifiManager;Landroid/telephony/TelephonyManager;Lcom/android/systemui/telephony/TelephonyListenerManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mContext:Landroid/content/Context;

    const-string p1, " | "

    .line 834
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mSeparator:Ljava/lang/String;

    .line 839
    iput-object p3, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 840
    iput-object p4, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 841
    iput-object p5, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    .line 842
    iput-object p6, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 843
    iput-object p7, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 844
    iput-object p8, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 845
    iput-object p9, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/keyguard/CarrierTextManager;
    .locals 14

    .line 862
    new-instance v13, Lcom/android/keyguard/CarrierTextManager;

    iget-object v1, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mSeparator:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mShowAirplaneMode:Z

    iget-boolean v4, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mShowMissingSim:Z

    iget-object v5, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v6, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    iget-object v8, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v9, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mMainExecutor:Ljava/util/concurrent/Executor;

    iget-object v10, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mBgExecutor:Ljava/util/concurrent/Executor;

    iget-object v11, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/android/keyguard/CarrierTextManager;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;ZZLandroid/net/wifi/WifiManager;Landroid/telephony/TelephonyManager;Lcom/android/systemui/telephony/TelephonyListenerManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/CarrierTextManager$1;)V

    return-object v13
.end method

.method public setShowAirplaneMode(Z)Lcom/android/keyguard/CarrierTextManager$Builder;
    .locals 0

    .line 850
    iput-boolean p1, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mShowAirplaneMode:Z

    return-object p0
.end method

.method public setShowMissingSim(Z)Lcom/android/keyguard/CarrierTextManager$Builder;
    .locals 0

    .line 856
    iput-boolean p1, p0, Lcom/android/keyguard/CarrierTextManager$Builder;->mShowMissingSim:Z

    return-object p0
.end method
