.class public final Lcom/android/systemui/controls/management/model/ReorderStructureModel;
.super Ljava/lang/Object;
.source "ReorderStructureModel.kt"

# interfaces
.implements Lcom/android/systemui/controls/management/model/StructureModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/management/model/ReorderStructureModel$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/management/model/ReorderStructureModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/management/model/StructureElementWrapper;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final favorites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/ControlInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/management/model/ReorderStructureModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/model/ReorderStructureModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->Companion:Lcom/android/systemui/controls/management/model/ReorderStructureModel$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "structures"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->favorites:Ljava/util/List;

    .line 22
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->createWrappers(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->elements:Ljava/util/List;

    .line 50
    new-instance p1, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v0, Lcom/android/systemui/controls/management/model/ReorderStructureModel$itemTouchHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/management/model/ReorderStructureModel$itemTouchHelper$1;-><init>(Lcom/android/systemui/controls/management/model/ReorderStructureModel;)V

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-void
.end method

.method private final createWrappers(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/management/model/StructureElementWrapper;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 28
    new-instance v1, Lcom/android/systemui/controls/management/model/ReorderWrapper;

    invoke-direct {v1, v0}, Lcom/android/systemui/controls/management/model/ReorderWrapper;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private final moveElement(II)V
    .locals 3

    if-ge p1, p2, :cond_1

    if-ge p1, p2, :cond_3

    :goto_0
    add-int/lit8 v0, p1, 0x1

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->getElements()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1, v0}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    if-lt v0, p2, :cond_0

    goto :goto_2

    :cond_0
    move p1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    if-gt p2, p1, :cond_3

    :goto_1
    add-int/lit8 v0, p1, -0x1

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->getElements()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    invoke-static {v1, p1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    if-ne p1, p2, :cond_2

    goto :goto_2

    :cond_2
    move p1, v0

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public attachAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method public getElements()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/management/model/StructureElementWrapper;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 22
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->elements:Ljava/util/List;

    return-object p0
.end method

.method public final getItemTouchHelper()Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 50
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method public final onMoveItem(II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->moveElement(II)V

    .line 35
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    :goto_0
    return-void
.end method
