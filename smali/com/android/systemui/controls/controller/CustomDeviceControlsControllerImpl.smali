.class public final Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;
.super Ljava/lang/Object;
.source "CustomDeviceControlsControllerImpl.kt"

# interfaces
.implements Lcom/android/systemui/controls/controller/CustomDeviceControlsController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomDeviceControlsControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomDeviceControlsControllerImpl.kt\ncom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,170:1\n1819#2,2:171\n*E\n*S KotlinDebug\n*F\n+ 1 CustomDeviceControlsControllerImpl.kt\ncom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl\n*L\n117#1,2:171\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private callback:Lcom/android/systemui/controls/controller/CustomDeviceControlsController$Callback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyguardUpdateMonitorWrapper:Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final listingCallback:Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$listingCallback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final saLogger:Lcom/android/systemui/controls/ui/util/SALogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final userContextProvider:Lcom/android/systemui/settings/UserContextProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->Companion:Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/controls/dagger/ControlsComponent;Lcom/android/systemui/settings/UserContextProvider;Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapper;Lcom/android/systemui/controls/ui/util/SALogger;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/dagger/ControlsComponent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/settings/UserContextProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/controls/ui/util/SALogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsComponent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userContextProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsActivityStarter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardUpdateMonitorWrapper"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "saLogger"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    .line 43
    iput-object p3, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->userContextProvider:Lcom/android/systemui/settings/UserContextProvider;

    .line 44
    iput-object p4, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    .line 45
    iput-object p5, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->keyguardUpdateMonitorWrapper:Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapper;

    .line 46
    iput-object p6, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 51
    new-instance p1, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$listingCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$listingCallback$1;-><init>(Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->listingCallback:Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$listingCallback$1;

    return-void
.end method

.method public static final synthetic access$addPackageToSeededSet(Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;Landroid/content/SharedPreferences;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->addPackageToSeededSet(Landroid/content/SharedPreferences;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$fireControlsUpdate(Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->fireControlsUpdate()V

    return-void
.end method

.method public static final synthetic access$getControlsComponent$p(Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;)Lcom/android/systemui/controls/dagger/ControlsComponent;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    return-object p0
.end method

.method public static final synthetic access$getListingCallback$p(Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;)Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$listingCallback$1;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->listingCallback:Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$listingCallback$1;

    return-object p0
.end method

.method public static final synthetic access$seedFavorites(Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;Ljava/util/List;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->seedFavorites(Ljava/util/List;)V

    return-void
.end method

.method private final addPackageToSeededSet(Landroid/content/SharedPreferences;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 151
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p0

    const-string v0, "SeedingCompleted"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 152
    :cond_0
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-object p0
.end method

.method private final fireControlsUpdate()V
    .locals 2

    const-string v0, "CustomDeviceControlsControllerImpl"

    const-string v1, "fireControlsUpdate()"

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object p0, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->callback:Lcom/android/systemui/controls/controller/CustomDeviceControlsController$Callback;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/controls/controller/CustomDeviceControlsController$Callback;->onControlsUpdate()V

    :goto_0
    return-void
.end method

.method private final seedFavorites(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlsServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$array;->config_controlsCustomPreferredPackages:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->userContextProvider:Lcom/android/systemui/settings/UserContextProvider;

    invoke-interface {v1}, Lcom/android/systemui/settings/UserContextProvider;->getUserContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "controls_prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 110
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v2

    const-string v4, "SeedingCompleted"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 111
    iget-object v4, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    invoke-virtual {v4}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getControlsController()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "controlsComponent.getControlsController().get()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/android/systemui/controls/controller/ControlsController;

    .line 112
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/4 v6, 0x2

    .line 115
    array-length v7, v0

    invoke-static {v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 116
    aget-object v6, v0, v3

    .line 1819
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/controls/ControlsServiceInfo;

    if-eqz v2, :cond_0

    .line 119
    iget-object v9, v8, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 120
    iget-object v9, v8, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    const-string v10, "it.componentName"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v9}, Lcom/android/systemui/controls/controller/ControlsController;->countFavoritesForComponent(Landroid/content/ComponentName;)I

    move-result v9

    if-lez v9, :cond_1

    const-string v8, "prefs"

    .line 124
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "pkg"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v6}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->addPackageToSeededSet(Landroid/content/SharedPreferences;Ljava/lang/String;)Lkotlin/Unit;

    goto :goto_1

    .line 126
    :cond_1
    iget-object v8, v8, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 134
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 136
    :cond_4
    new-instance p1, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$seedFavorites$2;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$seedFavorites$2;-><init>(Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;Landroid/content/SharedPreferences;)V

    invoke-interface {v4, v5, p1}, Lcom/android/systemui/controls/controller/ControlsController;->seedFavoritesForComponents(Ljava/util/List;Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public removeCallback()V
    .locals 2

    const-string v0, "CustomDeviceControlsControllerImpl"

    const-string/jumbo v1, "removeCallback()"

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->callback:Lcom/android/systemui/controls/controller/CustomDeviceControlsController$Callback;

    .line 88
    iget-object v0, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    invoke-virtual {v0}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getControlsListingController()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$removeCallback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$removeCallback$1;-><init>(Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/controls/controller/CustomDeviceControlsController$Callback;)V
    .locals 2
    .param p1    # Lcom/android/systemui/controls/controller/CustomDeviceControlsController$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CustomDeviceControlsControllerImpl"

    const-string/jumbo v1, "setCallback()"

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->removeCallback()V

    .line 71
    iput-object p1, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->callback:Lcom/android/systemui/controls/controller/CustomDeviceControlsController$Callback;

    .line 73
    iget-object p1, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    .line 74
    invoke-virtual {p1}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getControlsController()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$setCallback$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$setCallback$1$1;-><init>(Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 79
    invoke-virtual {p1}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getControlsListingController()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$setCallback$1$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl$setCallback$1$2;-><init>(Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public start()V
    .locals 2

    const-string v0, "CustomDeviceControlsControllerImpl"

    const-string/jumbo v1, "start()"

    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v1, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->keyguardUpdateMonitorWrapper:Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapper;

    invoke-interface {v1}, Lcom/android/systemui/controls/controller/util/KeyguardUpdateMonitorWrapper;->isUserUnlocked()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "Not user unlocked yet"

    .line 161
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 165
    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    sget-object v1, Lcom/android/systemui/controls/ui/util/SALogger$Event$LaunchDevices;->INSTANCE:Lcom/android/systemui/controls/ui/util/SALogger$Event$LaunchDevices;

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->controlsActivityStarter:Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/CustomDeviceControlsControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;->startCustomControlsActivity(Landroid/content/Context;)V

    return-void
.end method
