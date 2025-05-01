<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('temporders', function (Blueprint $table) {
            $table->id();
            $table->string('order_id')->nullable();
            $table->string('item_qty')->nullable();
            $table->string('total_price')->nullable();
            $table->foreignId('item_id')->constrained('items')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('temporders');
    }
};
