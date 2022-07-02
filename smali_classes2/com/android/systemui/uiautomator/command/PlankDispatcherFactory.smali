.class public Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;
.super Ljava/lang/Object;
.source "PlankDispatcherFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;
    }
.end annotation


# instance fields
.field protected dependencies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;",
            "Lcom/android/systemui/uiautomator/command/PlankCommandDispatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getDispatcherType(Ljava/lang/String;)Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;
    .locals 0

    .line 39
    :try_start_0
    invoke-static {p1}, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;->valueOf(Ljava/lang/String;)Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    sget-object p0, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;->none:Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final get(Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;)Lcom/android/systemui/uiautomator/command/PlankCommandDispatcher;
    .locals 1
    .param p1    # Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;->dependencies:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;->initialize()V

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;->getDependencies()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/uiautomator/command/PlankCommandDispatcher;

    return-object p0
.end method

.method public final get(Ljava/lang/String;)Lcom/android/systemui/uiautomator/command/PlankCommandDispatcher;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;->getDispatcherType(Ljava/lang/String;)Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;->get(Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;)Lcom/android/systemui/uiautomator/command/PlankCommandDispatcher;

    move-result-object p0

    return-object p0
.end method

.method protected final getDependencies()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;",
            "Lcom/android/systemui/uiautomator/command/PlankCommandDispatcher;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 11
    iget-object p0, p0, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;->dependencies:Ljava/util/Map;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "dependencies"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public initialize()V
    .locals 2

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;->setDependencies(Ljava/util/Map;)V

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;->getDependencies()Ljava/util/Map;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;->global_action:Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;

    new-instance v1, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher;

    invoke-direct {v1}, Lcom/android/systemui/uiautomator/command/GlobalActionCommandDispatcher;-><init>()V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected final setDependencies(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory$DispatcherType;",
            "Lcom/android/systemui/uiautomator/command/PlankCommandDispatcher;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;->dependencies:Ljava/util/Map;

    return-void
.end method
