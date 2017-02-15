def populate_drug_ids_param(search_params)
  // [[].presence, [1].presence].compact
  search_params[:selected_drug_ids] = [search_params[:selected_index_drug_id].presence, search_params[:selected_comparison_drug_id].presence ].compact
end
