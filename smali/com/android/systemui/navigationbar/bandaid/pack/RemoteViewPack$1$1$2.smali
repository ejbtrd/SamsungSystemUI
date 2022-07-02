.class final Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$1$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RemoteViewPack.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$1$1;->accept(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $it:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$1$1$2;->$it:Ljava/util/Map;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$1$1$2;->invoke(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;)V
    .locals 1
    .param p1    # Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_NAVBAR_RIGHT_REMOTEVIEW_VISIBILITY:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->setType(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;)V

    .line 75
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$1$1$2;->$it:Ljava/util/Map;

    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_CONTEXTUALBUTTON_VISIBLE:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->setContextualButtonVisible(Ljava/lang/Boolean;)V

    return-void
.end method
