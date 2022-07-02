.class public final Lcom/android/systemui/controls/management/ControlsReorderActivity;
.super Lcom/android/systemui/controls/BaseActivity;
.source "ControlsReorderActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/management/ControlsReorderActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsReorderActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsReorderActivity.kt\ncom/android/systemui/controls/management/ControlsReorderActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,145:1\n1#2:146\n768#3,11:147\n1517#3:158\n1588#3,3:159\n*E\n*S KotlinDebug\n*F\n+ 1 ControlsReorderActivity.kt\ncom/android/systemui/controls/management/ControlsReorderActivity\n*L\n128#1,11:147\n129#1:158\n129#1,3:159\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/management/ControlsReorderActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private component:Landroid/content/ComponentName;

.field private controlsListLayout:Landroid/widget/LinearLayout;

.field private final controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private noItemsLayout:Landroid/widget/LinearLayout;

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private structureAdapter:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

.field private structureModel:Lcom/android/systemui/controls/management/model/ReorderStructureModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/management/ControlsReorderActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/ControlsReorderActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->Companion:Lcom/android/systemui/controls/management/ControlsReorderActivity$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/AUIFacade;)V
    .locals 1
    .param p1    # Lcom/android/systemui/broadcast/BroadcastDispatcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/ui/util/LayoutUtil;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/controls/ui/util/ControlsUtil;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/controls/ui/util/AUIFacade;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "broadcastDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutUtil"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlsUtil"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auiFacade"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/BaseActivity;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 28
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 29
    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    .line 30
    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 31
    iput-object p4, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    const-string p1, "ControlsReorderActivity"

    .line 39
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private final getCurrentStructureList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->structureModel:Lcom/android/systemui/controls/management/model/ReorderStructureModel;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->getElements()Ljava/util/List;

    move-result-object p0

    .line 768
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 777
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/systemui/controls/management/model/ReorderWrapper;

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1517
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1589
    check-cast v1, Lcom/android/systemui/controls/management/model/ReorderWrapper;

    .line 129
    invoke-virtual {v1}, Lcom/android/systemui/controls/management/model/ReorderWrapper;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p0

    :cond_3
    const-string/jumbo p0, "structureModel"

    .line 128
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final saveStructureOrder()V
    .locals 6

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/controls/management/ControlsReorderActivity;->getCurrentStructureList()Ljava/util/ArrayList;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->list:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const-string v3, "list"

    if-eqz v1, :cond_2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlsReorderActivity;->getTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "saveStructureOrder origin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->list:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", current="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "OrderList"

    .line 136
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putCharSequenceArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 141
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    return-void

    .line 133
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getBroadcastDispatcher()Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 28
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-object p0
.end method

.method public final getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 48
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "recyclerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 39
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public onBackPressed()V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/controls/management/ControlsReorderActivity;->saveStructureOrder()V

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 52
    invoke-super {p0, p1}, Lcom/android/systemui/controls/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 55
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->component:Landroid/content/ComponentName;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 56
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extra_structure_lists"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    iput-object v0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->list:Ljava/util/ArrayList;

    .line 58
    sget v0, Lcom/android/systemui/R$layout;->controls_custom_management:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 60
    sget v0, Lcom/android/systemui/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 62
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 63
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->controls_reorder_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    .line 67
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 69
    :goto_1
    sget v0, Lcom/android/systemui/R$id;->main_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 70
    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    const-string/jumbo v3, "this"

    .line 71
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$integer;->controls_basic_width_percentage:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    .line 70
    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/controls/ui/util/LayoutUtil;->setLayoutWeightWidthPercentBasic(Landroid/view/View;F)V

    .line 75
    sget v0, Lcom/android/systemui/R$id;->controls_list_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v2, "requireViewById(R.id.controls_list_layout)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->controlsListLayout:Landroid/widget/LinearLayout;

    .line 76
    sget v0, Lcom/android/systemui/R$id;->no_items_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v2, "requireViewById(R.id.no_items_layout)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->noItemsLayout:Landroid/widget/LinearLayout;

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlsReorderActivity;->getTAG()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->list:Ljava/util/ArrayList;

    const-string v3, "list"

    if-eqz v2, :cond_13

    const-string v4, "onCreate list = "

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->list:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v2, "noItemsLayout"

    const/16 v4, 0x8

    const-string v5, "controlsListLayout"

    const/4 v6, 0x0

    if-eqz v0, :cond_6

    .line 80
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->controlsListLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->noItemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_5
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->controlsListLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_11

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->noItemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_10

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    :goto_2
    sget v0, Lcom/android/systemui/R$id;->stub:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 88
    sget v2, Lcom/android/systemui/R$layout;->controls_structure_page:I

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 89
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    if-nez p1, :cond_7

    move-object p1, v1

    goto :goto_3

    :cond_7
    const-string v0, "current_structure_list"

    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type java.util.ArrayList<kotlin.CharSequence>{ kotlin.collections.TypeAliasesKt.ArrayList<kotlin.CharSequence> }"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :goto_3
    if-nez p1, :cond_9

    .line 94
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->list:Ljava/util/ArrayList;

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_9
    :goto_4
    new-instance v0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;

    invoke-direct {v0, p1}, Lcom/android/systemui/controls/management/model/ReorderStructureModel;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->structureModel:Lcom/android/systemui/controls/management/model/ReorderStructureModel;

    .line 96
    new-instance p1, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    iget-object v3, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    invoke-direct {p1, v0, v2, v3}, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;-><init>(Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/AUIFacade;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->structureAdapter:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    .line 98
    sget p1, Lcom/android/systemui/R$id;->listAll:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->structureAdapter:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    const-string/jumbo v3, "structureAdapter"

    if-eqz v2, :cond_f

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string/jumbo v2, "requireViewById<RecyclerView>(R.id.listAll).apply { this.adapter = structureAdapter }"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/management/ControlsReorderActivity;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 99
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->structureModel:Lcom/android/systemui/controls/management/model/ReorderStructureModel;

    const-string/jumbo v0, "structureModel"

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->getItemTouchHelper()Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlsReorderActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 101
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->structureAdapter:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    if-eqz p1, :cond_d

    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->structureModel:Lcom/android/systemui/controls/management/model/ReorderStructureModel;

    if-eqz v2, :cond_c

    invoke-virtual {p1, v2}, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->changeModel(Lcom/android/systemui/controls/management/model/StructureModel;)V

    .line 102
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->structureModel:Lcom/android/systemui/controls/management/model/ReorderStructureModel;

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->structureAdapter:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    if-eqz p0, :cond_a

    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->attachAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void

    :cond_a
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_b
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_c
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_d
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_e
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_f
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_10
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_11
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_12
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_13
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlsReorderActivity;->onBackPressed()V

    const/4 p0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/controls/management/ControlsReorderActivity;->getCurrentStructureList()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "current_structure_list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 114
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
