.class public Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SizeInfo"
.end annotation


# instance fields
.field public cacheSize:J

.field public codeSize:J

.field public dataSize:J

.field public externalCacheSize:J

.field public externalCodeSize:J

.field public externalDataSize:J

.field public lastUpdated:J

.field public lastUsed:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
