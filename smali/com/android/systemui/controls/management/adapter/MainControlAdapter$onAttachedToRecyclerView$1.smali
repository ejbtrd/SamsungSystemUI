.class public final Lcom/android/systemui/controls/management/adapter/MainControlAdapter$onAttachedToRecyclerView$1;
.super Ljava/lang/Object;
.source "MainControlAdapter.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/controls/management/adapter/MainControlAdapter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/systemui/controls/management/adapter/MainControlAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lcom/android/systemui/controls/management/adapter/MainControlAdapter<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$onAttachedToRecyclerView$1;->$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$onAttachedToRecyclerView$1;->$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 243
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/android/systemui/controls/management/adapter/MainControlAdapter;

    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/MainControlAdapter$onAttachedToRecyclerView$1;->$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p0}, Lcom/android/systemui/controls/management/adapter/MainControlAdapter;->access$attachedToRecyclerView(Lcom/android/systemui/controls/management/adapter/MainControlAdapter;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
