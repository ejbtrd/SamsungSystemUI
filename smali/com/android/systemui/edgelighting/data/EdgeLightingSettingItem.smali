.class public Lcom/android/systemui/edgelighting/data/EdgeLightingSettingItem;
.super Ljava/lang/Object;
.source "EdgeLightingSettingItem.java"


# instance fields
.field public color:I

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/systemui/edgelighting/data/EdgeLightingSettingItem;->packageName:Ljava/lang/String;

    .line 12
    iput p2, p0, Lcom/android/systemui/edgelighting/data/EdgeLightingSettingItem;->color:I

    return-void
.end method
