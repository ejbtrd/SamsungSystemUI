.class public final Lcom/android/systemui/noticenter/NotiCenterPlugin;
.super Ljava/lang/Object;
.source "NotiCenterPlugin.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final handler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static isNotiCenterConnected:Z

.field private static final notiCenterCallback:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static notiCenterPluginListener:Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static notiCenterSettingsListener:Lcom/android/systemui/noticenter/NotiCenterSettingsListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static packageManager:Landroid/content/pm/PackageManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static plugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static showNotilusOnKeyguard:Z

.field private static statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static velocityTracker:Landroid/view/VelocityTracker;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-direct {v0}, Lcom/android/systemui/noticenter/NotiCenterPlugin;-><init>()V

    sput-object v0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    const-string v1, "NotiStar"

    .line 26
    sput-object v1, Lcom/android/systemui/noticenter/NotiCenterPlugin;->TAG:Ljava/lang/String;

    .line 28
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    sput-object v2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->handler:Landroid/os/Handler;

    .line 51
    new-instance v2, Lcom/android/systemui/noticenter/NotiCenterSettingsListener;

    invoke-direct {v2}, Lcom/android/systemui/noticenter/NotiCenterSettingsListener;-><init>()V

    sput-object v2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->notiCenterSettingsListener:Lcom/android/systemui/noticenter/NotiCenterSettingsListener;

    .line 53
    new-instance v2, Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1;

    invoke-direct {v2}, Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1;-><init>()V

    sput-object v2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->notiCenterCallback:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;

    .line 67
    new-instance v2, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;

    invoke-direct {v2, v0}, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;-><init>(Lcom/android/systemui/noticenter/NotiCenterPlugin;)V

    sput-object v2, Lcom/android/systemui/noticenter/NotiCenterPlugin;->notiCenterPluginListener:Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;

    .line 68
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->velocityTracker:Landroid/view/VelocityTracker;

    const-string v0, "NotiCenterPlugin init"

    .line 69
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getHandler$p()Landroid/os/Handler;
    .locals 1

    .line 23
    sget-object v0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static final synthetic access$setShowNotilusOnKeyguard$p(Z)V
    .locals 0

    .line 23
    sput-boolean p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->showNotilusOnKeyguard:Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/PrintWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "fd"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pw"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "args"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, " NotiCenterPlugin: "

    .line 94
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    sget-boolean p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->showNotilusOnKeyguard:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "  showNotilusOnKeyguard : "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 96
    sget-boolean p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->isNotiCenterConnected:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, " isNotiCenterConnected : "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->plugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;->getVersion()I

    move-result p0

    :goto_0
    sget v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_NOTISTAR:I

    if-lt p0, v0, :cond_2

    .line 99
    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->plugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final enterKeyguard()V
    .locals 0

    .line 104
    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->plugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;->enterKeyguard()V

    :goto_0
    return-void
.end method

.method public final getNotiCenterCallback()Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 53
    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->notiCenterCallback:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter$Callback;

    return-object p0
.end method

.method public final getNotiCenterPluginListener()Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 24
    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->notiCenterPluginListener:Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;

    return-object p0
.end method

.method public final getNotiCenterSettingsListener()Lcom/android/systemui/noticenter/NotiCenterSettingsListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 51
    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->notiCenterSettingsListener:Lcom/android/systemui/noticenter/NotiCenterSettingsListener;

    return-object p0
.end method

.method public final getPackageManager()Landroid/content/pm/PackageManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 49
    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->packageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public final getPlugin()Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 29
    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->plugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    return-object p0
.end method

.method public final getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 32
    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public final isNotiCenterPluginConnected()Z
    .locals 0

    .line 108
    sget-boolean p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->isNotiCenterConnected:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->plugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 25
    sput-object p1, Lcom/android/systemui/noticenter/NotiCenterPlugin;->context:Landroid/content/Context;

    return-void
.end method

.method public final setNotiCenterConnected(Z)V
    .locals 0

    .line 31
    sput-boolean p1, Lcom/android/systemui/noticenter/NotiCenterPlugin;->isNotiCenterConnected:Z

    return-void
.end method

.method public final setPlugin(Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;)V
    .locals 0
    .param p1    # Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 29
    sput-object p1, Lcom/android/systemui/noticenter/NotiCenterPlugin;->plugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    return-void
.end method

.method public final setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 2
    .param p1    # Lcom/android/systemui/statusbar/phone/StatusBar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 35
    sput-object p1, Lcom/android/systemui/noticenter/NotiCenterPlugin;->statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 36
    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "register observer"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    :goto_0
    move-object p0, p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :goto_1
    sput-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->packageManager:Landroid/content/pm/PackageManager;

    .line 38
    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.samsung.systemui.notilus"

    const-string v1, "com.samsung.systemui.notilus.service.NotificationListener"

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :try_start_0
    sget-object v0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->packageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_2
    const/4 v0, 0x2

    if-nez p1, :cond_3

    goto :goto_3

    .line 41
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v0, :cond_5

    .line 42
    :goto_3
    sget-object p1, Lcom/android/systemui/noticenter/NotiCenterPlugin;->packageManager:Landroid/content/pm/PackageManager;

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 45
    :catch_0
    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->TAG:Ljava/lang/String;

    const-string p1, "There is no Listener"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_4
    return-void
.end method

.method public final unLock()V
    .locals 0

    .line 90
    sget-object p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->plugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;->unLock()V

    :goto_0
    return-void
.end method
