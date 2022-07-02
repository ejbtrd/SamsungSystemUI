.class public Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;
.super Ljava/lang/Object;
.source "OpenThemeInteractor.java"


# instance fields
.field private mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public static synthetic $r8$lambda$mqYKnl8JAgXSDNcXf3fRewy8hts(Ljava/lang/Runnable;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->lambda$addCallback$0(Ljava/lang/Runnable;Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 23
    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 24
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p0, "com.samsung.android.theme.themecenter.THEME_APPLY"

    .line 25
    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$addCallback$0(Ljava/lang/Runnable;Landroid/net/Uri;)V
    .locals 0

    .line 44
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public addCallback(Ljava/lang/Runnable;)V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 31
    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 33
    :cond_0
    new-instance v0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor$1;-><init>(Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 41
    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    if-eqz v0, :cond_1

    .line 42
    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 44
    :cond_1
    new-instance v0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->mCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 45
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/net/Uri;

    const/4 v1, 0x0

    const-string/jumbo v2, "wallpapertheme_state"

    .line 46
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, p1, v1

    .line 45
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method
