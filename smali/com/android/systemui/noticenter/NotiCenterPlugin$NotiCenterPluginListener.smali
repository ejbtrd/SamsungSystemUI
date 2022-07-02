.class public final Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;
.super Ljava/lang/Object;
.source "NotiCenterPlugin.kt"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/noticenter/NotiCenterPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotiCenterPluginListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/SPluginListener<",
        "Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;",
        ">;"
    }
.end annotation


# instance fields
.field private notiCenterPlugin:Lcom/android/systemui/noticenter/NotiCenterPlugin;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/noticenter/NotiCenterPlugin;)V
    .locals 1
    .param p1    # Lcom/android/systemui/noticenter/NotiCenterPlugin;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "notiCenterPlugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->notiCenterPlugin:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    return-void
.end method


# virtual methods
.method public bridge synthetic onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 0

    .line 111
    check-cast p1, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->onPluginConnected(Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;Landroid/content/Context;)V
    .locals 3
    .param p1    # Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pluginContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    sget-object v0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-virtual {v0}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onPluginConnected : "

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {v0, p2}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->setContext(Landroid/content/Context;)V

    .line 115
    iget-object p2, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->notiCenterPlugin:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-virtual {p2, p1}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->setPlugin(Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;)V

    .line 116
    iget-object p0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->notiCenterPlugin:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->setNotiCenterConnected(Z)V

    .line 117
    invoke-virtual {v0}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->getNotiCenterCallback()Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;->setCallback(Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;)V

    .line 118
    invoke-virtual {v0}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->getNotiCenterSettingsListener()Lcom/android/systemui/noticenter/NotiCenterSettingsListener;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/noticenter/NotiCenterSettingsListener;->notifyInitialization()V

    .line 119
    new-instance p0, Landroid/content/ComponentName;

    const-string p1, "com.samsung.systemui.notilus"

    const-string v1, "com.samsung.systemui.notilus.service.NotificationListener"

    invoke-direct {p0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0, p2, p2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V
    .locals 0

    .line 111
    check-cast p1, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->onPluginDisconnected(Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;I)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;I)V
    .locals 2
    .param p1    # Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "plugin"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    sget-object p2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-virtual {p2}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPluginDisconnected : "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p1, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->notiCenterPlugin:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->setPlugin(Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;)V

    .line 126
    iget-object p0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;->notiCenterPlugin:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->setNotiCenterConnected(Z)V

    .line 127
    invoke-virtual {p2}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->getNotiCenterCallback()Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;->onChangedVisibilityOnKeyguard(Z)V

    .line 128
    invoke-virtual {p2}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->getNotiCenterCallback()Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;->onNotiStarPanelShowOnKeyguard(Z)V

    return-void
.end method
