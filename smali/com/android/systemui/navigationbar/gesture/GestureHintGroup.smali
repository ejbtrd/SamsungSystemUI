.class public Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;
.super Ljava/lang/Object;
.source "GestureHintGroup.java"


# instance fields
.field private mHintGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;->mHintGroup:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 19
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;->mHintGroup:Ljava/util/ArrayList;

    sget v1, Lcom/android/systemui/R$id;->hint_left:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;->mHintGroup:Ljava/util/ArrayList;

    sget v1, Lcom/android/systemui/R$id;->hint_center:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;->mHintGroup:Ljava/util/ArrayList;

    sget v0, Lcom/android/systemui/R$id;->hint_right:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getHintView()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 1

    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;->getHintView(I)Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public getHintView(I)Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;->mHintGroup:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    return-object p0
.end method

.method public setCurrentRotation(IZ)V
    .locals 1

    .line 33
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;->mHintGroup:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 34
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setCurrentRotation(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIconResourceMapper(Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;)V
    .locals 1

    .line 39
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;->mHintGroup:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 40
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/gesture/NavigationHintHandle;->setIconResourceMapper(Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;)V

    goto :goto_0

    :cond_1
    return-void
.end method
