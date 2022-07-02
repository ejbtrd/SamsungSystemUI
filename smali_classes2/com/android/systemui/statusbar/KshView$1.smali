.class Lcom/android/systemui/statusbar/KshView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "KshView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KshView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KshView;


# direct methods
.method public static synthetic $r8$lambda$DV7eX19iZJRsSxjwWa6p2JYpW-Y(Lcom/android/systemui/statusbar/KshView$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KshView$1;->lambda$onScrollStateChanged$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/KshView;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method private synthetic lambda$onScrollStateChanged$0()V
    .locals 1

    .line 127
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KshView;->access$800(Lcom/android/systemui/statusbar/KshView;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/KshView;->access$1000(Lcom/android/systemui/statusbar/KshView;I)V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 101
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KshView;->access$200(Lcom/android/systemui/statusbar/KshView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/KshView;->access$302(Lcom/android/systemui/statusbar/KshView;Z)Z

    :cond_0
    const/4 v0, 0x0

    if-eq p2, p1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KshView;->access$300(Lcom/android/systemui/statusbar/KshView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KshView;->access$500(Lcom/android/systemui/statusbar/KshView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/KshView;->access$400(Lcom/android/systemui/statusbar/KshView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    iget-object v1, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/KshView;->access$302(Lcom/android/systemui/statusbar/KshView;Z)Z

    :cond_1
    if-ne p2, p1, :cond_2

    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/KshView;->access$202(Lcom/android/systemui/statusbar/KshView;Z)Z

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KshView;->access$600(Lcom/android/systemui/statusbar/KshView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/KshView;->access$202(Lcom/android/systemui/statusbar/KshView;Z)Z

    :cond_3
    if-nez p2, :cond_6

    .line 120
    iget-object p2, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    invoke-static {p2}, Lcom/android/systemui/statusbar/KshView;->access$200(Lcom/android/systemui/statusbar/KshView;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 121
    iget-object p2, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    invoke-static {p2}, Lcom/android/systemui/statusbar/KshView;->access$500(Lcom/android/systemui/statusbar/KshView;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KshView;->access$400(Lcom/android/systemui/statusbar/KshView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 122
    iget-object p2, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    invoke-static {p2}, Lcom/android/systemui/statusbar/KshView;->access$100(Lcom/android/systemui/statusbar/KshView;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    invoke-static {p2}, Lcom/android/systemui/statusbar/KshView;->access$000(Lcom/android/systemui/statusbar/KshView;)Z

    move-result v0

    xor-int/2addr p1, v0

    invoke-static {p2, p1}, Lcom/android/systemui/statusbar/KshView;->access$002(Lcom/android/systemui/statusbar/KshView;Z)Z

    .line 123
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KshView;->access$700(Lcom/android/systemui/statusbar/KshView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    .line 124
    iget-object p2, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    invoke-static {p2}, Lcom/android/systemui/statusbar/KshView;->access$700(Lcom/android/systemui/statusbar/KshView;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p2

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KshView;->access$000(Lcom/android/systemui/statusbar/KshView;)Z

    move-result v1

    if-eqz v1, :cond_5

    move p1, p2

    :cond_5
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/KshView;->access$802(Lcom/android/systemui/statusbar/KshView;I)I

    .line 126
    iget-object p1, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KshView;->access$800(Lcom/android/systemui/statusbar/KshView;)I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    invoke-static {p2}, Lcom/android/systemui/statusbar/KshView;->access$900(Lcom/android/systemui/statusbar/KshView;)I

    move-result p2

    if-eq p1, p2, :cond_6

    .line 127
    iget-object p1, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KshView;->access$500(Lcom/android/systemui/statusbar/KshView;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/KshView$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/KshView$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KshView$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 92
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 93
    iget-object p1, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    const/4 p3, 0x1

    if-lez p2, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/KshView;->access$002(Lcom/android/systemui/statusbar/KshView;Z)Z

    if-nez p2, :cond_1

    .line 94
    iget-object p1, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KshView;->access$100(Lcom/android/systemui/statusbar/KshView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshView$1;->this$0:Lcom/android/systemui/statusbar/KshView;

    invoke-static {p0, p3}, Lcom/android/systemui/statusbar/KshView;->access$002(Lcom/android/systemui/statusbar/KshView;Z)Z

    :cond_1
    return-void
.end method
