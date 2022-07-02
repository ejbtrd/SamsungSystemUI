.class final Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$18$1;
.super Ljava/lang/Object;
.source "GesturePack.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/util/Map<",
        "Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $store:Lcom/android/systemui/navigationbar/store/NavBarStore;


# direct methods
.method constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$18$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 396
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$18$1;->accept(Ljava/util/Map;)V

    return-void
.end method

.method public final accept(Ljava/util/Map;)V
    .locals 6
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$18$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 398
    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_ONEHAND_INFO:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v0, p1

    if-eqz v0, :cond_1

    const-string p1, ";"

    .line 400
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 401
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 402
    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->Companion:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Companion;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$18$1$1$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$18$1$1$1;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Companion;->action(Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/navigationbar/store/NavBarStoreAction;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->apply(Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Z

    :cond_1
    return-void
.end method
