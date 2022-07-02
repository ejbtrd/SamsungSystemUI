.class public final Lcom/android/systemui/navigationbar/bandaid/Band$Builder;
.super Ljava/lang/Object;
.source "Band.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigationbar/bandaid/Band;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private bandAidDependency:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private moduleDependency:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private patchAction:Ljava/util/function/Consumer;
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

.field private priority:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private runeDependency:Z

.field private tag:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private targetEvent:Lcom/android/systemui/navigationbar/store/EventType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private targetModule:Ljava/lang/reflect/Type;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Ljava/lang/Boolean;

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->tag:Ljava/lang/String;

    .line 32
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    .line 33
    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/Band;->Companion:Lcom/android/systemui/navigationbar/bandaid/Band$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Companion;->getMID_PRIORITY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->priority:Ljava/lang/Integer;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependency:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/systemui/navigationbar/bandaid/Band;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 36
    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/Band;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band;-><init>(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getBandAidDependency()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 28
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getModuleDependency()Ljava/util/List;
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

    .line 34
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependency:Ljava/util/List;

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

    .line 35
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Consumer;

    return-object p0
.end method

.method public final getPriority()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 33
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->priority:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getRuneDependency()Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    return p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 30
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public final getTargetEvent()Lcom/android/systemui/navigationbar/store/EventType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 29
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvent:Lcom/android/systemui/navigationbar/store/EventType;

    return-object p0
.end method

.method public final getTargetModule()Ljava/lang/reflect/Type;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 31
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModule:Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public final setBandAidDependency(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 28
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Ljava/lang/Boolean;

    return-void
.end method

.method public final setModuleDependency(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependency:Ljava/util/List;

    return-void
.end method

.method public final setPatchAction(Ljava/util/function/Consumer;)V
    .locals 0
    .param p1    # Ljava/util/function/Consumer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/Map<",
            "Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Consumer;

    return-void
.end method

.method public final setPriority(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 33
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->priority:Ljava/lang/Integer;

    return-void
.end method

.method public final setRuneDependency(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    return-void
.end method

.method public final setTag(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 30
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->tag:Ljava/lang/String;

    return-void
.end method

.method public final setTargetEvent(Lcom/android/systemui/navigationbar/store/EventType;)V
    .locals 0
    .param p1    # Lcom/android/systemui/navigationbar/store/EventType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 29
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvent:Lcom/android/systemui/navigationbar/store/EventType;

    return-void
.end method

.method public final setTargetModule(Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1    # Ljava/lang/reflect/Type;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 31
    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModule:Ljava/lang/reflect/Type;

    return-void
.end method
