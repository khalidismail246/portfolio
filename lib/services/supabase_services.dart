import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseServices {
  static final supabase = Supabase.instance.client;

  Future<List<Map<String, dynamic>>> getData({required String table}) async {
    try {
      final response = await supabase.from(table).select();

      return List<Map<String, dynamic>>.from(response);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
