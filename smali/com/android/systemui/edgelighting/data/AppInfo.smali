.class public Lcom/android/systemui/edgelighting/data/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field final appIcon:Landroid/graphics/drawable/Drawable;

.field final appName:Ljava/lang/String;

.field public isSelected:Z

.field final packageName:Ljava/lang/String;

.field final priority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IZ)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/edgelighting/data/AppInfo;->appName:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/android/systemui/edgelighting/data/AppInfo;->packageName:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/android/systemui/edgelighting/data/AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 22
    iput p4, p0, Lcom/android/systemui/edgelighting/data/AppInfo;->priority:I

    .line 23
    iput-boolean p5, p0, Lcom/android/systemui/edgelighting/data/AppInfo;->isSelected:Z

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/edgelighting/data/AppInfo;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/systemui/edgelighting/data/AppInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPriority()I
    .locals 0

    .line 47
    iget p0, p0, Lcom/android/systemui/edgelighting/data/AppInfo;->priority:I

    return p0
.end method
