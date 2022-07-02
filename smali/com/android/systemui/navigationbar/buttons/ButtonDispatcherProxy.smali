.class public Lcom/android/systemui/navigationbar/buttons/ButtonDispatcherProxy;
.super Ljava/lang/Object;
.source "ButtonDispatcherProxy.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/ButtonDispatcherProxyBase;


# instance fields
.field private mButtonDispatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcherProxy;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcherProxy;->mButtonDispatchers:Landroid/util/SparseArray;

    return-void
.end method

.method private getButton(I)Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcherProxy;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    return-object p0
.end method


# virtual methods
.method public addButton(I)V
    .locals 1

    .line 38
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcherProxy;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public getButtonView(I)Landroid/view/View;
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcherProxy;->getButton(I)Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setButtonImage(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcherProxy;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p2, p3, v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->create(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p2

    .line 44
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcherProxy;->getButton(I)Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcherProxy;->getButton(I)Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcherProxy;->getButton(I)Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setButtonOnClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcherProxy;->getButton(I)Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcherProxy;->getButton(I)Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setButtonOnLongClickListener(ILandroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcherProxy;->getButton(I)Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcherProxy;->getButton(I)Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void
.end method

.method public setButtonVisibility(II)V
    .locals 1

    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcherProxy;->getButton(I)Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcherProxy;->getButton(I)Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    :cond_0
    return-void
.end method
