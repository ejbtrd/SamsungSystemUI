.class Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$2;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "SimpleStatusBarIconController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;


# direct methods
.method public static synthetic $r8$lambda$3B7-o23LNbRqMIY4KydVJWh8TAI(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$2;->lambda$onUserSwitched$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-void
.end method

.method private synthetic lambda$onUserSwitched$0()V
    .locals 1

    .line 86
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$2;->this$0:Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const-string/jumbo v0, "simple_status_bar"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;->onChanged(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 3

    .line 85
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$2;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
