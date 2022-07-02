.class public Landroidx/apppickerview/widget/AppPickerIconLoader;
.super Ljava/lang/Object;
.source "AppPickerIconLoader.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroidx/apppickerview/widget/AppPickerIconLoader;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Landroidx/apppickerview/widget/AppPickerIconLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public startIconLoaderThread()V
    .locals 0

    return-void
.end method

.method public stopIconLoaderThread()V
    .locals 0

    return-void
.end method
