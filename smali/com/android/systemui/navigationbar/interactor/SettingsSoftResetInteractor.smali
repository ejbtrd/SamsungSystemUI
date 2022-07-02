.class public Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;
.super Ljava/lang/Object;
.source "SettingsSoftResetInteractor.java"


# instance fields
.field private mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentFilter:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-void
.end method


# virtual methods
.method public addCallback(Ljava/lang/Runnable;)V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 26
    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 28
    :cond_0
    new-instance v0, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor$1;-><init>(Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 34
    iget-object p1, p0, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method
