.class public abstract Lcom/android/systemui/controls/management/adapter/CustomHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CustomControlAdapter.kt"


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 267
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/adapter/CustomHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public abstract bindData(Lcom/android/systemui/controls/management/model/CustomElementWrapper;)V
    .param p1    # Lcom/android/systemui/controls/management/model/CustomElementWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public updateFavorite(Z)V
    .locals 0

    return-void
.end method
