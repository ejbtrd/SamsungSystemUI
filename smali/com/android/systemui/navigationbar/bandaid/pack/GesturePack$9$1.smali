.class final Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$9$1;
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

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$9$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 233
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$9$1;->accept(Ljava/util/Map;)V

    return-void
.end method

.method public final accept(Ljava/util/Map;)V
    .locals 3
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

    .line 234
    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_RESULT:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$9$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v2, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_GAME_MODE:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStore;->isEnabled(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$9$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v2, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_IME_SHOWING:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStore;->isEnabled(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$9$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v2, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_FLOATING_GAMETOOLS_SUPPORT:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStore;->isEnabled(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$9$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_FLOATING_GAMETOOLS_SHOWING:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {p0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->isEnabled(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 234
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
