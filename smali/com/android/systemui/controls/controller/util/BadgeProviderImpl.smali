.class public final Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;
.super Ljava/lang/Object;
.source "BadgeProviderImpl.kt"

# interfaces
.implements Lcom/android/systemui/controls/controller/util/BadgeProvider;
.implements Lcom/android/systemui/controls/controller/util/BadgeSubject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBadgeProviderImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BadgeProviderImpl.kt\ncom/android/systemui/controls/controller/util/BadgeProviderImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,164:1\n1#2:165\n1819#3,2:166\n*E\n*S KotlinDebug\n*F\n+ 1 BadgeProviderImpl.kt\ncom/android/systemui/controls/controller/util/BadgeProviderImpl\n*L\n101#1,2:166\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private badgeNotRequiredSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final badgeObservers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/controls/controller/util/BadgeObserver;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private badgeRequiredSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->Companion:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/util/concurrency/DelayableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/util/concurrency/DelayableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uiExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->context:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 22
    iput-object p3, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    const-string p1, "ControlsBadgeRequired"

    .line 33
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->getPackagesSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeRequiredSet:Ljava/util/Set;

    const-string p1, "ControlsBadgeNotRequired"

    .line 34
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->getPackagesSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeNotRequiredSet:Ljava/util/Set;

    .line 42
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeObservers:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$getBadgeObservers$p(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;)Ljava/util/Set;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeObservers:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getBadgeSymbol(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;)Ljava/lang/String;
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->getBadgeSymbol()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$needToExpose(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;)Z
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->needToExpose()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$putPackagesSet(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->putPackagesSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method private static final dismiss$dismissObservers(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;)V
    .locals 2

    .line 101
    iget-object p0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeObservers:Ljava/util/Set;

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/controller/util/BadgeObserver;

    .line 102
    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/util/BadgeObserver;->getMenuItem()Landroidx/appcompat/view/menu/SeslMenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/appcompat/view/menu/SeslMenuItem;->setBadgeText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final dismiss$flush-9(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$dismiss$flush$1$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$dismiss$flush$1$1;-><init>(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;Ljava/lang/String;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 107
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dismiss(): "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BadgeProviderImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private final getBadgeDescription()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object p0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->controls_badge_description:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "context.resources.getString(R.string.controls_badge_description)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getBadgeSymbol()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object p0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->controls_badge_symbol:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "context.resources.getString(R.string.controls_badge_symbol)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getPackagesSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object p0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->context:Landroid/content/Context;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/android/systemui/Prefs;->getStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    const-string p1, "getStringSet(context, key, mutableSetOf<String>())"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final needToExpose()Z
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeRequiredSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private final needToExpose(Landroid/content/ComponentName;)Z
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeRequiredSet:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final onServicesUpdated$flush(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->putPackagesSet(Ljava/lang/String;Ljava/util/Set;)V

    .line 61
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onServicesUpdated(): "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BadgeProviderImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static final onServicesUpdated$remove(Ljava/util/Set;Ljava/util/Set;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 57
    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method private final putPackagesSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->context:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/Prefs;->putStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->context:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/systemui/Prefs;->remove(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeRequiredSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 111
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->dismiss$dismissObservers(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;)V

    .line 113
    iget-object v1, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeNotRequiredSet:Ljava/util/Set;

    .line 114
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v2, "ControlsBadgeNotRequired"

    const-string v3, "badgeNotRequiredSet"

    .line 115
    invoke-static {p0, v1, v2, v3}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->dismiss$flush-9(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const-string v1, "ControlsBadgeRequired"

    const-string v2, "badgeRequiredSet"

    .line 120
    invoke-static {p0, v0, v1, v2}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->dismiss$flush-9(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public invalidate()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$invalidate$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$invalidate$1;-><init>(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServicesUpdated(Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "servicesSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favoritesSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeRequiredSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeNotRequiredSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeNotRequiredSet:Ljava/util/Set;

    sget-object v1, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->Companion:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$Companion;

    invoke-virtual {v1, p2}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$Companion;->toPackagesSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 77
    :cond_0
    sget-object p2, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->Companion:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$Companion;

    invoke-virtual {p2, p1}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$Companion;->toPackagesSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeRequiredSet:Ljava/util/Set;

    invoke-static {v1, v0}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->onServicesUpdated$remove(Ljava/util/Set;Ljava/util/Set;)Ljava/lang/Boolean;

    .line 79
    iget-object v1, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeNotRequiredSet:Ljava/util/Set;

    invoke-static {v1, v0}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->onServicesUpdated$remove(Ljava/util/Set;Ljava/util/Set;)Ljava/lang/Boolean;

    .line 85
    invoke-virtual {p2, p1}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$Companion;->toPackagesSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeRequiredSet:Ljava/util/Set;

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeNotRequiredSet:Ljava/util/Set;

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 86
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeRequiredSet:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 91
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->invalidate()V

    .line 96
    iget-object p1, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeRequiredSet:Ljava/util/Set;

    const-string p2, "ControlsBadgeRequired"

    const-string v0, "badgeRequiredSet"

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->onServicesUpdated$flush(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p1, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeNotRequiredSet:Ljava/util/Set;

    const-string p2, "ControlsBadgeNotRequired"

    const-string v0, "badgeNotRequiredSet"

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->onServicesUpdated$flush(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public register(Lcom/android/systemui/controls/controller/util/BadgeObserver;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/controller/util/BadgeObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "badgeObserver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object p0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeObservers:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDescription(Landroid/content/ComponentName;Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->needToExpose(Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->getBadgeDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 143
    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show(Landroid/content/ComponentName;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "componentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->needToExpose(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 132
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 p0, 0x8

    .line 135
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public unregister(Lcom/android/systemui/controls/controller/util/BadgeObserver;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/controller/util/BadgeObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "badgeObserver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object p0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeObservers:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
