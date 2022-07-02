.class final Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$band$1$1;
.super Ljava/lang/Object;
.source "RemoteViewPack.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
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

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$band$1$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$band$1$1;->accept(Ljava/util/Map;)V

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

    .line 41
    iget-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$band$1$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->Companion:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Companion;

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$band$1$1$1;

    invoke-direct {v2, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$band$1$1$1;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Companion;->action(Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/navigationbar/store/NavBarStoreAction;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->apply(Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Z

    .line 45
    iget-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$band$1$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_LEFT_REMOTEVIEW_EXIST:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->isEnabled(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$band$1$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$band$1$1$2;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$band$1$1$2;

    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Companion;->action(Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/navigationbar/store/NavBarStoreAction;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->apply(Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Z

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$band$1$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_RIGHT_REMOTEVIEW_EXIST:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->isEnabled(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 51
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$band$1$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object p1, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$band$1$1$3;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$band$1$1$3;

    invoke-virtual {v1, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Companion;->action(Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/navigationbar/store/NavBarStoreAction;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->apply(Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Z

    :cond_1
    return-void
.end method
