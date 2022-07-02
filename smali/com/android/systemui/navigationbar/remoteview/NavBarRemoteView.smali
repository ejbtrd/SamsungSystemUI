.class public Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;
.super Ljava/lang/Object;
.source "NavBarRemoteView.java"


# instance fields
.field private mPriority:I

.field private mRequestClass:Ljava/lang/String;

.field private mRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p3, p1, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->mView:Landroid/view/View;

    .line 25
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->setViewLayoutParams()V

    .line 26
    iput-object p2, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->mRequestClass:Ljava/lang/String;

    .line 27
    iput p4, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->mPriority:I

    .line 28
    new-instance p2, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    iget-object p3, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->mView:Landroid/view/View;

    invoke-direct {p2, p1, p3}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->mRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    .line 30
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->mView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setViewLayoutParams()V
    .locals 2

    .line 34
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->mView:Landroid/view/View;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public add(Landroid/widget/LinearLayout;)V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 66
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 67
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public getPriority()I
    .locals 0

    .line 50
    iget p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->mPriority:I

    return p0
.end method

.method public getRequestClass()Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->mRequestClass:Ljava/lang/String;

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteView;->mView:Landroid/view/View;

    return-object p0
.end method
