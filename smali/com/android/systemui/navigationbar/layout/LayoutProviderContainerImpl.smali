.class public Lcom/android/systemui/navigationbar/layout/LayoutProviderContainerImpl;
.super Ljava/lang/Object;
.source "LayoutProviderContainerImpl.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/systemui/navigationbar/layout/LayoutProviderContainerImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public updateLayoutProvider(Z)Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;
    .locals 0

    if-eqz p1, :cond_0

    .line 19
    new-instance p1, Lcom/android/systemui/navigationbar/layout/LayoutProviderImpl;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/LayoutProviderContainerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/layout/LayoutProviderImpl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/layout/LayoutProviderContainerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/navigationbar/layout/TabletLayoutProviderImpl;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object p1
.end method
