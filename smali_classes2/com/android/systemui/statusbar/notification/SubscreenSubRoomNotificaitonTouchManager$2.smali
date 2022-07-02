.class Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$2;
.super Ljava/lang/Object;
.source "SubscreenSubRoomNotificaitonTouchManager.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 129
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 130
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->access$600(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->access$500(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 137
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v1

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->access$500(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    .line 142
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v1

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->access$502(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;F)F

    .line 149
    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 151
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    .line 152
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    if-eqz v0, :cond_4

    .line 153
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 156
    :cond_4
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    if-eqz v0, :cond_7

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    check-cast p2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->canViewBeDismissed()Z

    move-result v3

    if-eqz v3, :cond_5

    const v3, 0x3e99999a    # 0.3f

    goto :goto_1

    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->access$402(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;F)F

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->canViewBeDismissed()Z

    move-result p2

    if-eqz p2, :cond_6

    const/high16 p2, 0x40a00000    # 5.0f

    goto :goto_2

    :cond_6
    const/high16 p2, 0x447a0000    # 1000.0f

    :goto_2
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->access$302(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;F)F

    .line 161
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 162
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    invoke-static {p0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->access$002(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;Z)Z

    goto :goto_3

    .line 164
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->access$002(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;Z)Z

    :cond_8
    :goto_3
    return v1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
