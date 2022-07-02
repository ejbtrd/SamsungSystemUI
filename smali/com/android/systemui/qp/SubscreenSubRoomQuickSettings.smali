.class public Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;
.super Ljava/lang/Object;
.source "SubscreenSubRoomQuickSettings.java"

# interfaces
.implements Lcom/android/systemui/plugins/subscreen/SubRoom;


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;

.field private static sInstance:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;


# instance fields
.field private mMainView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-direct {p0}, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->init()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/systemui/util/InjectionInflationController;)Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;
    .locals 1

    .line 26
    sget-object v0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->sInstance:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    if-nez v0, :cond_0

    .line 27
    sput-object p0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mContext:Landroid/content/Context;

    .line 28
    sput-object p1, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;

    .line 29
    new-instance p0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    invoke-direct {p0}, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;-><init>()V

    sput-object p0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->sInstance:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    .line 31
    :cond_0
    sget-object p0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->sInstance:Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;

    return-object p0
.end method

.method private init()V
    .locals 4

    .line 35
    sget-object v0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;

    sget-object v1, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/InjectionInflationController;->injectable(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->subscreen_quick_settings_base:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 36
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mMainView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenSubRoomQuickSettings;->mMainView:Landroid/view/View;

    return-object p0
.end method

.method public onCloseFinished()V
    .locals 0

    return-void
.end method

.method public onCloseStarted()V
    .locals 0

    return-void
.end method

.method public onOpenFinished()V
    .locals 0

    return-void
.end method

.method public onOpenStarted()V
    .locals 0

    return-void
.end method

.method public removeListener()V
    .locals 0

    return-void
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setListener(Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;)V
    .locals 0

    return-void
.end method
