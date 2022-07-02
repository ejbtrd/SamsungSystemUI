.class final Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RemoteViewPack.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$2$1;->accept(Ljava/util/Map;)V
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

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$2$1$1;->$it:Ljava/util/Map;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 98
    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$2$1$1;->invoke(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;)V
    .locals 6
    .param p1    # Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;->UPDATE_NAVBAR_REMOTEVIEW_LIST:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->setType(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;)V

    .line 100
    new-instance v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;

    .line 101
    iget-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$2$1$1;->$it:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_REMOTEVIEW_REQUEST_CLASS:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 102
    iget-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$2$1$1;->$it:Ljava/util/Map;

    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_REMOTEVIEW_ICON:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 103
    iget-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$2$1$1;->$it:Ljava/util/Map;

    sget-object v4, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_REMOTEVIEW_POSITION:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 104
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$2$1$1;->$it:Ljava/util/Map;

    sget-object v5, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_REMOTEVIEW_PRIORITY:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 100
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;-><init>(Ljava/lang/String;Landroid/widget/RemoteViews;II)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->setRemoteViewShortcut(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;)V

    return-void
.end method
