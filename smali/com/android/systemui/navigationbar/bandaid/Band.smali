.class public final Lcom/android/systemui/navigationbar/bandaid/Band;
.super Ljava/lang/Object;
.source "Band.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/navigationbar/bandaid/Band$Builder;,
        Lcom/android/systemui/navigationbar/bandaid/Band$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/navigationbar/bandaid/Band$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static HIGH_PRIORITY:I

.field private static LOW_PRIORITY:I

.field private static MID_PRIORITY:I


# instance fields
.field private final bandAidDependency:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final moduleDependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final patchAction:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/Map<",
            "Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final priority:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private runeDependency:Z

.field private final tag:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final targetEvent:Lcom/android/systemui/navigationbar/store/EventType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final targetModule:Ljava/lang/reflect/Type;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/Band$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/navigationbar/bandaid/Band;->Companion:Lcom/android/systemui/navigationbar/bandaid/Band$Companion;

    const/4 v0, 0x1

    .line 41
    sput v0, Lcom/android/systemui/navigationbar/bandaid/Band;->MID_PRIORITY:I

    const/4 v0, 0x2

    .line 42
    sput v0, Lcom/android/systemui/navigationbar/bandaid/Band;->LOW_PRIORITY:I

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;)V
    .locals 9

    .line 21
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->getBandAidDependency()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->getTargetEvent()Lcom/android/systemui/navigationbar/store/EventType;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->getTargetModule()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->getRuneDependency()Z

    move-result v5

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->getPriority()Ljava/lang/Integer;

    move-result-object v6

    .line 23
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->getModuleDependency()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->getPatchAction()Ljava/util/function/Consumer;

    move-result-object v8

    move-object v0, p0

    .line 20
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/navigationbar/bandaid/Band;-><init>(Ljava/lang/Boolean;Lcom/android/systemui/navigationbar/store/EventType;Ljava/lang/String;Ljava/lang/reflect/Type;ZLjava/lang/Integer;Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 24
    sget-boolean p0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/bandaid/Band;-><init>(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Lcom/android/systemui/navigationbar/store/EventType;Ljava/lang/String;Ljava/lang/reflect/Type;ZLjava/lang/Integer;Ljava/util/List;Ljava/util/function/Consumer;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/navigationbar/store/EventType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/reflect/Type;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/function/Consumer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Lcom/android/systemui/navigationbar/store/EventType;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Z",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/Map<",
            "Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->bandAidDependency:Ljava/lang/Boolean;

    .line 12
    iput-object p2, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->targetEvent:Lcom/android/systemui/navigationbar/store/EventType;

    .line 13
    iput-object p3, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->tag:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->targetModule:Ljava/lang/reflect/Type;

    .line 15
    iput-boolean p5, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->runeDependency:Z

    .line 16
    iput-object p6, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->priority:Ljava/lang/Integer;

    .line 17
    iput-object p7, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->moduleDependencies:Ljava/util/List;

    .line 18
    iput-object p8, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->patchAction:Ljava/util/function/Consumer;

    return-void
.end method

.method public static final synthetic access$getHIGH_PRIORITY$cp()I
    .locals 1

    .line 10
    sget v0, Lcom/android/systemui/navigationbar/bandaid/Band;->HIGH_PRIORITY:I

    return v0
.end method

.method public static final synthetic access$getLOW_PRIORITY$cp()I
    .locals 1

    .line 10
    sget v0, Lcom/android/systemui/navigationbar/bandaid/Band;->LOW_PRIORITY:I

    return v0
.end method

.method public static final synthetic access$getMID_PRIORITY$cp()I
    .locals 1

    .line 10
    sget v0, Lcom/android/systemui/navigationbar/bandaid/Band;->MID_PRIORITY:I

    return v0
.end method


# virtual methods
.method public final getBandAidDependency()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 11
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->bandAidDependency:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getModuleDependencies()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 17
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->moduleDependencies:Ljava/util/List;

    return-object p0
.end method

.method public final getPatchAction()Ljava/util/function/Consumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Ljava/util/Map<",
            "Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 18
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->patchAction:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public final getPriority()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 16
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->priority:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getRuneDependency()Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->runeDependency:Z

    return p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 13
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public final getTargetEvent()Lcom/android/systemui/navigationbar/store/EventType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 12
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->targetEvent:Lcom/android/systemui/navigationbar/store/EventType;

    return-object p0
.end method

.method public final getTargetModule()Ljava/lang/reflect/Type;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 14
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->targetModule:Ljava/lang/reflect/Type;

    return-object p0
.end method
