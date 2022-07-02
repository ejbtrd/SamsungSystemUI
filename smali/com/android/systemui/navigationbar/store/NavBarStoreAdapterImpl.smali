.class public final Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;
.super Ljava/lang/Object;
.source "NavBarStoreAdapterImpl.kt"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/NavBarStoreAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavBarStoreAdapterImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavBarStoreAdapterImpl.kt\ncom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl\n+ 2 Band.kt\ncom/android/systemui/navigationbar/bandaid/Band$Companion\n*L\n1#1,123:1\n43#2:124\n*E\n*S KotlinDebug\n*F\n+ 1 NavBarStoreAdapterImpl.kt\ncom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl\n*L\n57#1:124\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final logWrapper:Lcom/android/systemui/basic/util/LogWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pluginPack:Lcom/android/systemui/navigationbar/bandaid/pack/PluginPack;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final store:Lcom/android/systemui/navigationbar/store/NavBarStore;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->Companion:Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 1
    .param p1    # Lcom/android/systemui/navigationbar/store/NavBarStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/basic/util/LogWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWrapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 14
    iput-object p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 15
    new-instance p2, Lcom/android/systemui/navigationbar/bandaid/pack/PluginPack;

    invoke-direct {p2, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/PluginPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->pluginPack:Lcom/android/systemui/navigationbar/bandaid/pack/PluginPack;

    return-void
.end method


# virtual methods
.method public addBand(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->addBand(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public addBand(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", retValue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "addBand"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->removeBand(Ljava/lang/String;)V

    .line 57
    :try_start_0
    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/Band;->Companion:Lcom/android/systemui/navigationbar/bandaid/Band$Companion;

    .line 43
    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    .line 58
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setBandAidDependency(Ljava/lang/Boolean;)V

    .line 59
    const-class v2, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;

    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetModule(Ljava/lang/reflect/Type;)V

    const-string v2, "PLUGIN_PACK_RUN_PLUGIN_ACTIONS"

    .line 60
    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTag(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Companion;->getLOW_PRIORITY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPriority(Ljava/lang/Integer;)V

    .line 62
    invoke-static {p1}, Lcom/android/systemui/navigationbar/store/EventType;->valueOf(Ljava/lang/String;)Lcom/android/systemui/navigationbar/store/EventType;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V

    .line 63
    new-instance p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl$addBand$band$1$1;

    invoke-direct {p1, p2, p3}, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl$addBand$band$1$1;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->setPatchAction(Ljava/util/function/Consumer;)V

    .line 43
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p1

    .line 70
    iget-object p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->pluginPack:Lcom/android/systemui/navigationbar/bandaid/pack/PluginPack;

    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/bandaid/pack/PluginPack;->getBands()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 72
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string p2, "An error occurred while running addBand()"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "NavBarStoreAdapterImpl"

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public addPack()V
    .locals 2

    const-string v0, "addPack"

    const-string v1, ""

    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->pluginPack:Lcom/android/systemui/navigationbar/bandaid/pack/PluginPack;

    invoke-interface {v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->addPack(Lcom/android/systemui/navigationbar/bandaid/BandAidPack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v1, "An error occurred while running addPack()"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBarStoreAdapterImpl"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public apply(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action : "

    .line 108
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apply"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 111
    sget-object v1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->Companion:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Companion;

    new-instance v2, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl$apply$1$1;

    invoke-direct {v2, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl$apply$1$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Companion;->action(Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/navigationbar/store/NavBarStoreAction;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->apply(Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 116
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v0, "An error occurred while running apply()"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "NavBarStoreAdapterImpl"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value : "

    .line 98
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getValue"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-static {p1}, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->valueOf(Ljava/lang/String;)Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getValue(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 102
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v0, "An error occurred while running isEnabled()"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "NavBarStoreAdapterImpl"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public initPack()V
    .locals 2

    const-string v0, "initPack"

    const-string v1, ""

    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->pluginPack:Lcom/android/systemui/navigationbar/bandaid/pack/PluginPack;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/bandaid/pack/PluginPack;->removeBands()V

    .line 24
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-interface {v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->restorePacks()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 26
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v1, "An error occurred while running initPack()"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBarStoreAdapterImpl"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value : "

    .line 88
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isEnabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-static {p1}, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->valueOf(Ljava/lang/String;)Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->isEnabled(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 92
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v0, "An error occurred while running isEnabled()"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "NavBarStoreAdapterImpl"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "apiLog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainLog"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "() "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NavBarStoreAdapterImpl"

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeBand(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event : "

    .line 77
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "removeBand"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->pluginPack:Lcom/android/systemui/navigationbar/bandaid/pack/PluginPack;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/bandaid/pack/PluginPack;->getBands()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl$removeBand$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl$removeBand$1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 83
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v0, "An error occurred while running removeBand()"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "NavBarStoreAdapterImpl"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public removePack()V
    .locals 2

    const-string/jumbo v0, "removePack"

    const-string v1, ""

    .line 40
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-interface {v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->restorePacks()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v1, "An error occurred while running removePack()"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavBarStoreAdapterImpl"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
