.class public Lcom/android/systemui/statusbar/KshViewAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "KshViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KshViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field subHeader:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/statusbar/KshViewAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KshViewAdapter;Landroid/view/View;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshViewAdapter$ViewHolder;->this$0:Lcom/android/systemui/statusbar/KshViewAdapter;

    .line 123
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 125
    sget p1, Lcom/android/systemui/R$id;->ksh_subheader_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshViewAdapter$ViewHolder;->subHeader:Landroid/widget/TextView;

    .line 126
    sget p1, Lcom/android/systemui/R$id;->ksh_info_recycler_view:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KshViewAdapter$ViewHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
